import requests
import json
from matplotlib import pyplot as plt
from matplotlib.patches import Circle, Rectangle, Arc
import pandas as pd
import numpy as np
from io import BytesIO
import boto3
import sqlalchemy
import os
from nba_api.stats.endpoints import shotchartdetail
from nba_api.stats.endpoints import boxscoretraditionalv2
from nba_api.stats.endpoints import boxscoreadvancedv2
from sqlalchemy.types import Integer, Boolean, Numeric, String, Date
from nba_api.stats.endpoints import commonallplayers
from custommodules import boxscoreutils
from custommodules import buildrotation


class PlayerGameResults:
    table_name = 'playergameresults'
    columns_to_types = {"assists": Integer(),
                        "blocks": Integer(),
                        "defensive_possessions": Integer(),
                        "defensive_rating": Numeric(),
                        "defensive_rebounds": Integer(),
                        "effective_field_goal_pct": Numeric(),
                        "field_goals_attempted": Integer(),
                        "field_goals_made": Integer(),
                        "fouls": Integer(),
                        "free_throws_attempted": Integer(),
                        "free_throws_made": Integer(),
                        "game_date": Date(),
                        "game_id": String(),
                        "is_home": Boolean(),
                        "is_starter": Boolean(),
                        "live_turnovers": Integer(),
                        "minutes": String(),
                        "offensive_possessions": Integer(),
                        "offensive_rating": Numeric(),
                        "offensive_rebounds": Integer(),
                        "pace": Numeric(),
                        "player_id": Integer(),
                        "plus_minus": Integer(),
                        "points": Integer(),
                        "rebounds": Integer(),
                        "rim_assists": Integer(),
                        "rim_attempted": Integer(),
                        "rim_made": Integer(),
                        "season": String(),
                        "steals": Integer(),
                        "team_id": Integer(),
                        "threes_attempted": Integer(),
                        "threes_made": Integer(),
                        "true_shooting_pct": Numeric(),
                        "turnovers": Integer(),
                        "usage_pct": Numeric()}
    db_columns = list(columns_to_types.keys())

    def __init__(self, game_id, team_id, game_date, season, is_home, con):
        self.game_id = game_id
        self.team_id = team_id
        self.game_date = game_date
        self.season = season
        self.is_home = is_home
        self.con = con

    def create_player_box_score(self, df):
        df['season'] = self.season
        df['team_id'] = self.team_id
        df['game_id'] = self.game_id
        df['is_home'] = self.is_home
        df['game_date'] = self.game_date
        df['game_date'] = pd.to_datetime(df['game_date'])

        # --------------------
        # field_goals_attempted
        # field_goals_made
        df = df.fillna(0)
        df['field_goals_attempted'] = df['FG2A'].astype(int) + df['FG3A'].astype(int)
        df['field_goals_made'] = df['FG2M'].astype(int) + df['FG3M'].astype(int)


        # add in plus_minus and starters from NBA API
        box_json = boxscoretraditionalv2.BoxScoreTraditionalV2(self.game_id)
        box_data = json.loads(box_json.get_json())

        trad_df = pd.DataFrame(box_data['resultSets'][0]['rowSet'])
        trad_df.columns = box_data['resultSets'][0]['headers']
        trad_df['is_starter'] = np.where(trad_df['START_POSITION'] != '', True, False)
        trad_df['PLAYER_ID'] = trad_df['PLAYER_ID'].astype(int)
        trad_df = trad_df[['PLAYER_ID', 'is_starter', 'PLUS_MINUS']]
        df['EntityId'] = df['EntityId'].astype(int)

        df = df.merge(trad_df, left_on='EntityId', right_on='PLAYER_ID', how='left')
        df = df.sort_values(['is_starter', 'Minutes'], ascending=False)
        df['is_starter'] = df['is_starter'].fillna(False)

        # add in offensive and def rating and pace from nba api
        box_json = boxscoreadvancedv2.BoxScoreAdvancedV2(self.game_id)
        box_data = json.loads(box_json.get_json())

        adv_df = pd.DataFrame(box_data['resultSets'][0]['rowSet'])
        adv_df.columns = box_data['resultSets'][0]['headers']
        adv_df['PLAYER_ID'] = adv_df['PLAYER_ID'].astype(int)
        adv_df = adv_df[['PLAYER_ID', 'PACE', 'OFF_RATING', 'DEF_RATING']]

        df = df.merge(adv_df, left_on='EntityId', right_on='PLAYER_ID', how='left')
        df = df.fillna(0)

        # match columns to db names
        df = df.rename(columns={"FTA": "free_throws_attempted",
                                "FtPoints": "free_throws_made",
                                'FG3A': 'threes_attempted',
                                'FG3M': 'threes_made',
                                'OffPoss': 'offensive_possessions',
                                'DefPoss': 'defensive_possessions',
                                'AtRimFGM': 'rim_made',
                                'AtRimFGA': 'rim_attempted',
                                'EntityId': 'player_id',
                                'Minutes': 'minutes',
                                'Points': 'points',
                                'Assists': 'assists',
                                'AtRimAssists': 'rim_assists',
                                'TsPct': 'true_shooting_pct',
                                'Blocks': 'blocks',
                                'DefRebounds': 'defensive_rebounds',
                                'OffRebounds': 'offensive_rebounds',
                                'Rebounds': 'rebounds',
                                'EfgPct': 'effective_field_goal_pct',
                                'Steals': 'steals',
                                'Fouls': 'fouls',
                                'LiveBallTurnovers': 'live_turnovers',
                                'Turnovers': 'turnovers',
                                'PACE': 'pace',
                                'PLUS_MINUS': 'plus_minus',
                                'OFF_RATING': 'offensive_rating',
                                'DEF_RATING': 'defensive_rating',
                                'Usage': 'usage_pct'})

        for col in self.db_columns:
            if col not in df.columns:
                df[col] = 0

        df = df[self.db_columns]
        # make home team team line = 1
        if self.is_home:
            team_index = list(df[df['player_id'] == 0].index)[0]
            df.at[team_index, 'player_id'] = 1
        df.to_sql(name=self.table_name, con=self.con, if_exists='append', index=False)
        return df


class TeamGameResults:
    table_name = 'teamgameresults'
    columns_to_types = {"assists": Integer(),
                        "blocks": Integer(),
                        "defensive_possessions": Integer(),
                        "defensive_rating": Numeric(),
                        "defensive_rebounds": Integer(),
                        "effective_field_goal_pct": Numeric(),
                        "field_goals_attempted": Integer(),
                        "field_goals_made": Integer(),
                        "fouls": Integer(),
                        "free_throws_attempted": Integer(),
                        "free_throws_made": Integer(),
                        "game_date": Date(),
                        "game_id": String(),
                        "is_home": Boolean(),
                        "live_turnovers": Integer(),
                        "num_overtimes": Integer(),
                        "offensive_possessions": Integer(),
                        "offensive_rating": Numeric(),
                        "offensive_rebounds": Integer(),
                        "pace": Numeric(),
                        "rebounds": Integer(),
                        "rim_assists": Integer(),
                        "rim_attempted": Integer(),
                        "rim_made": Integer(),
                        "rotation_chart_location": String(),
                        "score": Integer(),
                        "season": String(),
                        "shot_chart_location": String(),
                        "steals": Integer(),
                        "team_id": Integer(),
                        "threes_attempted": Integer(),
                        "threes_made": Integer(),
                        "true_shooting_pct": Numeric(),
                        "turnovers": Integer()}
    db_columns = list(columns_to_types.keys())

    def __init__(self, game_id, team_id, game_date, season, is_home, con):
        self.game_id = game_id
        self.team_id = team_id
        self.game_date = game_date
        self.season = season
        self.is_home = is_home
        self.con = con

    def create_team_box_score(self, df, rotation_chart_location, shot_chart_location):
        df['season'] = self.season
        df['team_id'] = self.team_id
        df['game_id'] = self.game_id
        df['is_home'] = self.is_home
        df['rotation_chart_location'] = rotation_chart_location
        df['shot_chart_location'] = shot_chart_location
        df['game_date'] = self.game_date
        df['game_date'] = pd.to_datetime(df['game_date'])

        # --------------------
        # field_goals_attempted
        # field_goals_made
        df['field_goals_attempted'] = df['FG2A'].astype(int) + df['FG3A'].astype(int)
        df['field_goals_made'] = df['FG2M'].astype(int) + df['FG3M'].astype(int)

        # add in offensive and def rating, pace and num OTs from nba api
        box_json = boxscoreadvancedv2.BoxScoreAdvancedV2(self.game_id)
        box_data = json.loads(box_json.get_json())

        adv_df = pd.DataFrame(box_data['resultSets'][1]['rowSet'])
        adv_df.columns = box_data['resultSets'][1]['headers']
        adv_df['minutes_num'] = (adv_df['MIN'].str.split(':', expand=True)[0]).astype(int)
        adv_df['num_overtimes'] = ((adv_df['minutes_num'] / 5) - 48) / 5
        adv_df = adv_df[['TEAM_ID', 'PACE', 'OFF_RATING', 'DEF_RATING', 'num_overtimes']]
        adv_df['TEAM_ID'] = adv_df['TEAM_ID'].astype(int)

        df['team_id'] = df['team_id'].astype(int)

        df = df.merge(adv_df, left_on='team_id', right_on='TEAM_ID', how='left')
        df = df.fillna(0)
        # match columns to db names
        df = df.rename(columns={"FTA": "free_throws_attempted",
                                "FtPoints": "free_throws_made",
                                'FG3A': 'threes_attempted',
                                'FG3M': 'threes_made',
                                'OffPoss': 'offensive_possessions',
                                'DefPoss': 'defensive_possessions',
                                'AtRimFGM': 'rim_made',
                                'AtRimFGA': 'rim_attempted',
                                'EntityId': 'player_id',
                                'Points': 'score',
                                'Assists': 'assists',
                                'AtRimAssists': 'rim_assists',
                                'TsPct': 'true_shooting_pct',
                                'Blocks': 'blocks',
                                'DefRebounds': 'defensive_rebounds',
                                'OffRebounds': 'offensive_rebounds',
                                'Rebounds': 'rebounds',
                                'EfgPct': 'effective_field_goal_pct',
                                'Steals': 'steals',
                                'Fouls': 'fouls',
                                'LiveBallTurnovers': 'live_turnovers',
                                'Turnovers': 'turnovers',
                                'PACE': 'pace',
                                'OFF_RATING': 'offensive_rating',
                                'DEF_RATING': 'defensive_rating'})

        for col in self.db_columns:
            if col not in df.columns:
                df[col] = 0

        df = df[self.db_columns]
        df.to_sql(name=self.table_name, con=self.con, if_exists='append', index=False)
        return df


def add_new_players(con):
    '''
    checks if new players have joined the league adds them to db
    '''
    table_name = 'players'
    data = commonallplayers.CommonAllPlayers()
    data_json = json.loads(data.get_json())
    rows = data_json['resultSets'][0]['rowSet']
    headers = data_json['resultSets'][0]['headers']
    players_df = pd.DataFrame(rows)
    players_df.columns = headers
    players_df = players_df[players_df['ROSTERSTATUS'] == 1].copy()
    players_df[['last_name', 'first_name']] = players_df['DISPLAY_LAST_COMMA_FIRST'].str.split(', ', expand=True)
    players_df = players_df[['PERSON_ID', 'first_name', 'last_name', 'TEAM_ID']]
    players_df.columns = ['player_id', 'first_name', 'last_name', 'team_id']
    existing_players_df = pd.read_sql('SELECT * FROM players', con=con)
    new_players = players_df[~players_df['player_id'].isin(existing_players_df['player_id'])]
    if new_players.shape[0] > 0:
        new_players.to_sql(name=table_name, con=con, if_exists='append', index=False)


def collect_and_write_data(con, date=None, season=None):
    '''
    creates charts and writes to db
    :param con: sqlalchemy connection object to database
    :param date: string for games to grab FORMAT '2021-01-14', if none, most recent game is used
    :param season: string for season to grab, if none 2020-21 is used
    :return: results of writes
    '''
    recent_games_df = boxscoreutils.get_games(date=date)  # date format '2021-01-14'
    game_date = list(recent_games_df['Date'])[0]
    recent_game_ids = list(recent_games_df['GameId'])

    if season is None:
        season = '2020-21'

    games_dicts = []
    app_name = 'gamerecaps'
    la_df = boxscoreutils.get_league_average_shot_data()

    for game_id in recent_game_ids:
        print(game_id)
        game = requests.get(f'https://api.pbpstats.com/get-game-stats?Type=Player&GameId={game_id}')
        game_data = game.json()

        save_path = f'{app_name}/{game_date}'

        away_team_id = game_data['away_team_id']
        home_team_id = game_data['home_team_id']

        away_player_df = pd.DataFrame(game_data['stats']['Away']['FullGame'])
        home_player_df = pd.DataFrame(game_data['stats']['Home']['FullGame'])

        away_team_df = pd.DataFrame([game_data['team_results']['Away']['FullGame']])
        home_team_df = pd.DataFrame([game_data['team_results']['Home']['FullGame']])

        # create box score --> writes to playergame results table
        away_player_results = PlayerGameResults(con=con, game_id=game_id, team_id=away_team_id, game_date=game_date,
                                      season=season, is_home=False)
        home_players_results = PlayerGameResults(con=con, game_id=game_id, team_id=home_team_id, game_date=game_date,
                                      season=season, is_home=True)

        away_player_results.create_player_box_score(away_player_df)
        home_players_results.create_player_box_score(home_player_df)

        # create shot charts
        away_shots_df = boxscoreutils.get_team_shot_data(away_player_df, away_team_id, game_id)
        home_shots_df = boxscoreutils.get_team_shot_data(home_player_df, home_team_id, game_id)

        away_shots_save_path = f"{save_path}/{game_data['away_team_abbreviation']}shots.png"
        home_shots_save_path = f"{save_path}/{game_data['home_team_abbreviation']}shots.png"

        boxscoreutils.plot_shot_chart(away_shots_df, la_df, game_data['away_team_abbreviation'],
                                      away_shots_save_path)
        boxscoreutils.plot_shot_chart(home_shots_df, la_df, game_data['home_team_abbreviation'],
                                      home_shots_save_path)

        # create rotation chart
        awayrotaion, homerotation = buildrotation.build_rotation(game_id, game_data['away_team_abbreviation'],
                                                                 game_data['home_team_abbreviation'], save_path)


        #create team box score
        away_team_results = TeamGameResults(con=con, game_id=game_id, team_id=away_team_id, game_date=game_date,
                                            season=season, is_home=False)
        home_team_results = TeamGameResults(con=con, game_id=game_id, team_id=home_team_id, game_date=game_date,
                                            season=season, is_home=True)
        away_team_results.create_team_box_score(away_team_df, awayrotaion, away_shots_save_path)
        home_team_results.create_team_box_score(home_team_df, homerotation, home_shots_save_path)

if __name__ == '__main__':
    collect_and_write_data()
