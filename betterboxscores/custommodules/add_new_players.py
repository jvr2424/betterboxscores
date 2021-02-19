import requests
import json
import pandas as pd
import numpy as np
from bs4 import BeautifulSoup
import lxml
import sqlalchemy
import time
from unidecode import unidecode
from fuzzywuzzy import fuzz
from fuzzywuzzy import process


def collect_new_bballref_players(existing_players):
    # get the bball ref players
    bball_ref_page = requests.get('https://www.basketball-reference.com/leagues/NBA_2021_totals.html#totals_stats::mp')
    soup = BeautifulSoup(bball_ref_page.content, 'lxml')
    players_table = soup.find('table', attrs={'id': 'totals_stats'})
    all_players = players_table.find_all('tr', attrs={'class': 'full_table'})
    all_bball_ref_players = []
    for index, player in enumerate(all_players):
        data = player.find_all('td')
        last_first = data[0].attrs['csk'].split(',')
        player_data = {'name': unidecode(data[0].text),
                       'first_name': last_first[1],
                       'last_name': last_first[0],
                       'player_id': data[0].attrs['data-append-csv'],
                       'player_link': data[0].a.attrs['href']}
        for stat in data:
            if stat.attrs['data-stat'] == 'team_id':
                # if player changed teams navigate to their palyer page and grab the last team entry in their per
                # game table
                if stat.text == 'TOT':
                    player_page = requests.get(f'https://www.basketball-reference.com/{player_data["player_link"]}')
                    soup = BeautifulSoup(player_page.content, 'lxml')
                    table = soup.find('table', attrs={'id': 'per_game'})
                    teams = table.tbody.find_all('td', attrs={'data-stat': 'team_id'})
                    player_data['team_id'] = teams[-1].text
                    print(player_data["player_link"])
                    print(player_data["team_id"])
                else:
                    player_data['team_id'] = stat.text
            elif stat.attrs['data-stat'] == 'mp':
                player_data['minutes'] = stat.text

        all_bball_ref_players.append(player_data)

    # format bball ref players df --> some team abbreviations are different
    bball_ref_players_df = pd.DataFrame(all_bball_ref_players)
    bball_ref_players_df['team_id'] = bball_ref_players_df['team_id'].str.replace('BRK', 'BKN')
    bball_ref_players_df['team_id'] = bball_ref_players_df['team_id'].str.replace('CHO', 'CHA')
    bball_ref_players_df['team_id'] = bball_ref_players_df['team_id'].str.replace('PHO', 'PHX')
    bball_ref_players_df = bball_ref_players_df.sort_values(['team_id', 'minutes'])
    new_bball_ref_players_df = bball_ref_players_df[
        ~bball_ref_players_df['player_id'].isin(existing_players['bballref_player_id'])].copy()

    return new_bball_ref_players_df


def fuzzy_match_players(new_bball_ref_players_df, new_nba_players):
    # take bball ref player and fuzzy match on nba players
    results = []
    bball_ref_as_dict = new_bball_ref_players_df.to_dict(orient='records')
    player_choices = new_nba_players.set_index('RowId')['Name'].to_dict()
    for bballref_player in bball_ref_as_dict:
        matches = process.extract(bballref_player['name'], player_choices, limit=2)
        # if exact match only add that exact match
        if matches[0][1] == 100:
            results.append(tuple(bballref_player.values()) + matches[0])
        else:
            for match in process.extract(bballref_player['name'], player_choices, limit=2):
                results.append(tuple(bballref_player.values()) + match)
    df_matches = pd.DataFrame(results)
    df_matches.columns = list(bball_ref_as_dict[0].keys()) + ['Name', 'score', 'RowId']
    return df_matches


def collect_new_players(existing_players, nba_players_df):
    new_nba_players = nba_players_df[~nba_players_df['RowId'].astype(int).isin(existing_players['player_id'])].copy()
    new_bball_ref_players_df = collect_new_bballref_players(existing_players)
    df_matches = fuzzy_match_players(new_bball_ref_players_df, new_nba_players)
    # merge on the NBA Team Information
    nba_player_teams = nba_players_df[['RowId', 'TeamAbbreviation', 'TeamId']]
    df_matches = df_matches.merge(nba_player_teams, how='left', on='RowId')
    # remove duplicates by asserting that all rows match team abbreviations
    final_map = df_matches[df_matches['team_id'] == df_matches['TeamAbbreviation']]
    print(f'All Players Were Matched: {final_map.shape[0] == new_nba_players.shape[0]}')
    print(f'In map: {final_map.shape[0]}, In New NBA players: {new_nba_players.shape[0]}')
    return final_map


def write_new_players_to_db(final_map, con):
    final_map = final_map[['name', 'first_name', 'last_name', 'player_id', 'Name', 'RowId', 'TeamId']].copy()
    final_map.columns = ['bballref_full_name', 'first_name', 'last_name', 'bballref_player_id', 'nba_full_name',
                         'player_id', 'team_id']
    final_map['player_id'] = final_map['player_id'].astype(int)
    final_map['team_id'] = final_map['team_id'].astype(int)
    final_map.to_sql(name='players', con=con, if_exists='append', index=False)
    print(f'Wrote {final_map.shape[0]} new players to DB')


def add_new_players(con):
    existing_players = pd.read_sql('SELECT * FROM players', con=con)
    page = requests.get(
        'https://api.pbpstats.com/get-totals/nba?Season=2020-21&SeasonType=Regular%2BSeason&Type=Player')
    nba_players_df = pd.DataFrame(page.json()['multi_row_table_data'])
    nba_players_df = nba_players_df.sort_values(['TeamAbbreviation', 'Minutes'])
    nba_players_df = nba_players_df[['Minutes', 'Name', 'RowId', 'TeamAbbreviation', 'TeamId']]

    if nba_players_df.shape[0] > existing_players.shape[0]:
        mapped_new_players = collect_new_players(existing_players, nba_players_df)
        write_new_players_to_db(mapped_new_players, con)
    else:
        print('no new players today')


if __name__ == '__main__':
    user = 'postgres'
    password = 'testingDB2021'
    engine = sqlalchemy.create_engine(f'postgresql://{user}:{password}@localhost/BetterBoxScores')
    con = engine.connect()

    add_new_players(con)
