import requests
import json
from matplotlib import pyplot as plt
import pandas as pd
from sklearn.preprocessing import MultiLabelBinarizer
from nba_api.stats.endpoints import shotchartdetail
from nba_api.stats.endpoints import playbyplayv2
from nba_api.stats.endpoints import boxscoreadvancedv2
import math
from matplotlib.patches import Circle, Rectangle, Arc
import boxscoreutils
import jinja2
import time
import os
import numpy as np


def fill_lineup_forward(df1, home_or_away):
    df = df1.copy()

    for i in df.index:
        if df.loc[i, 'PERIOD'] < 5:
            qtr_start_index = df.loc[(df['PERIOD'] == df.loc[i, 'PERIOD']) & (df['PCTIMESTRING'] == '12:00')].index[0]
        else:
            qtr_start_index = df.loc[(df['PERIOD'] == df.loc[i, 'PERIOD']) & (df['PCTIMESTRING'] == '5:00')].index[0]
        if i != 0 and i != qtr_start_index:
            if df.loc[i, f'{home_or_away}_Lineup_Change'] == 0:
                df.at[i, f'{home_or_away}_On_Court'] = df.loc[i - 1, f'{home_or_away}_On_Court']
                df.at[i, f'{home_or_away}_On_Court_IDs'] = df.loc[i - 1, f'{home_or_away}_On_Court_IDs']
            else:
                df.at[i, f'{home_or_away}_On_Court'] = [
                    player if player != df.loc[i, 'Sub_Out_Player'] else df.loc[i, 'Sub_In_Player'] for player in
                    df.loc[i - 1, f'{home_or_away}_On_Court']]
                df.at[i, f'{home_or_away}_On_Court_IDs'] = [
                    pid if pid != int(df.loc[i, 'Sub_Out_ID']) else int(df.loc[i, 'Sub_In_ID']) for pid in
                    df.loc[i - 1, f'{home_or_away}_On_Court_IDs']]

    return df


def create_player_stints(df, player_id, isHome):
    player_df = df[df[player_id] == 1].copy()
    player_df.at[player_df.index.min(), 'StintStart'] = 1
    player_df.at[player_df[player_df['key_0'] - player_df.shift(1)['key_0'] > 1].index, 'StintStart'] = 1
    player_df['StintStart'] = player_df['StintStart'].fillna(0)
    player_df['StintNum'] = player_df['StintStart'].cumsum()

    stint_tuples = []
    stint_plusminus = []
    for stint in list(player_df['StintNum'].unique()):
        start_time = list(player_df.loc[player_df['StintNum'] == stint, 'ElapsedGameTime'])[0]
        end_time = list(player_df.loc[player_df['StintNum'] == stint, 'ElapsedGameTime'])[-1]
        elapsed_time = end_time - start_time
        stint_tuples.append((start_time.total_seconds() / 60, elapsed_time.total_seconds() / 60))

        # get plus minus
        start_margin = list(player_df.loc[player_df['StintNum'] == stint, 'Home_SCORE'])[0] - \
                       list(player_df.loc[player_df['StintNum'] == stint, 'Away_SCORE'])[0]
        end_margin = list(player_df.loc[player_df['StintNum'] == stint, 'Home_SCORE'])[-1] - \
                     list(player_df.loc[player_df['StintNum'] == stint, 'Away_SCORE'])[-1]
        plus_minus = end_margin - start_margin
        if not isHome:
            plus_minus = -1 * plus_minus
        stint_plusminus.append(plus_minus)

    return stint_tuples, stint_plusminus


def collect_stints(full_box_df, df, ids, isHome):
    player_stints = []
    for pid in ids:
        stints, plus_minus = create_player_stints(df, pid, isHome)
        player_stints.append({'player_id': pid,
                              'player_name': list(full_box_df.loc[full_box_df['PLAYER_ID'] == pid, 'PLAYER_NAME'])[0],
                              'stints': stints,
                              'plus_minus': plus_minus})

    return player_stints


def graph_stints(player_stints, team_abbr, save_path):
    # graph this as rotation chart
    fig, ax = plt.subplots(figsize=(11, 12))

    y_ticks = []
    y_labels = []

    for index, player in enumerate(player_stints, start=1):
        y_ax = (200 + 10 - (10 * index), 9)
        y_ticks.append(200 + 10 - (10 * index) + 5)
        y_labels.append(player['player_name'])

        bar_colors = []
        for stint, plus_minus in zip(player['stints'], player['plus_minus']):
            data = [stint[0], stint[1]]

            for qtr_time in [12, 24, 36, 48]:
                if data[0] <= qtr_time:
                    start = 12 * (qtr_time / 12) - data[0]
                    break

            for qtr_time in [12, 24, 36, 48]:
                if data[1] + data[0] <= qtr_time:
                    end = 12 * (qtr_time / 12) - (data[1] + data[0])
                    break
            if data[1] <= 48:
                start_sec = math.ceil((start - math.floor(start)) * 60)
                end_sec = math.ceil((end - math.floor(end)) * 60)

                start_text = f"{math.floor(start)}:{start_sec:02d}"
                end_text = f"{math.floor(end)}:{end_sec:02d}"

                ax.annotate(start_text,
                            xy=(stint[0], y_ax[0] + 7), xycoords='data',
                            xytext=(stint[0], y_ax[0] + 7), textcoords='data')
                ax.annotate(end_text,
                            xy=(stint[0] + stint[1], y_ax[0] + 1.5), xycoords='data',
                            xytext=(stint[0] + stint[1], y_ax[0] + 1.5), textcoords='data')

                if plus_minus > 0:
                    plus_minus = f"+{plus_minus}"
                    bar_colors.append('green')
                elif plus_minus == 0:
                    bar_colors.append('gray')
                else:
                    bar_colors.append('red')

                ax.annotate(plus_minus,
                            xy=((2 * stint[0] + stint[1]) / 2, y_ax[0] + 4.25), xycoords='data',
                            xytext=((2 * stint[0] + stint[1]) / 2, y_ax[0] + 4.25), textcoords='data')

        ax.broken_barh(player['stints'], y_ax, color=bar_colors)

    ax.set_yticks(y_ticks)
    ax.set_yticklabels(y_labels)
    ax.axhline(y=160, color='black')

    x_ticks = [12, 24, 36, 48]
    x_labels = ['End 1', 'Half', 'End 3', 'End 4']
    ax.set_xticks(x_ticks)
    ax.set_xticklabels(x_labels)

    for tick in x_ticks:
        ax.axvline(x=tick, color='black')

    plt.title(f"{team_abbr} Rotation", loc='left')
    save_path = os.path.join(save_path,f"{team_abbr}rotation.png" )
    fig.savefig(save_path)

    plt.close("all")
    return save_path


def build_rotation(game_id, away_abbr, home_abbr, save_path):
    data = playbyplayv2.PlayByPlayV2(game_id=game_id)
    pbp_data = json.loads(data.get_json())
    rows = pbp_data['resultSets'][0]['rowSet']
    headers = pbp_data['resultSets'][0]['headers']
    pd.set_option('display.max_rows', None)
    pd.set_option('display.max_columns', None)
    pbp_df = pd.DataFrame(rows)
    pbp_df.columns = headers

    pbp_df['Sub_In_Player'] = np.where(pbp_df['EVENTMSGTYPE'] == 8, pbp_df['PLAYER2_NAME'], '')
    pbp_df['Sub_In_ID'] = np.where(pbp_df['EVENTMSGTYPE'] == 8, pbp_df['PLAYER2_ID'], '')
    pbp_df['Sub_Out_Player'] = np.where(pbp_df['EVENTMSGTYPE'] == 8, pbp_df['PLAYER1_NAME'], '')
    pbp_df['Sub_Out_ID'] = np.where(pbp_df['EVENTMSGTYPE'] == 8, pbp_df['PLAYER1_ID'], '')

    qtr_box_dfs = []
    for qtr in list(pbp_df['PERIOD'].unique()):
        box_data = boxscoreadvancedv2.BoxScoreAdvancedV2(game_id=game_id,
                                                         start_period=qtr,
                                                         end_period=qtr,
                                                         range_type=1
                                                         )

        box_json = json.loads(box_data.get_json())

        rows = box_json['resultSets'][0]['rowSet']
        headers = box_json['resultSets'][0]['headers']

        box_df = pd.DataFrame(rows)
        box_df.columns = headers

        qtr_box_dfs.append(box_df)

    pbp_df['Away_Lineup_Change'] = np.where(
        ((pbp_df['EVENTMSGTYPE'] == 8) & (pbp_df['PLAYER1_TEAM_ABBREVIATION'] == away_abbr)), 1, 0)
    pbp_df['Home_Lineup_Change'] = np.where(
        ((pbp_df['EVENTMSGTYPE'] == 8) & (pbp_df['PLAYER1_TEAM_ABBREVIATION'] == home_abbr)), 1, 0)

    pbp_df['Away_On_Court'] = None
    pbp_df['Away_On_Court_IDs'] = None
    pbp_df['Home_On_Court'] = None
    pbp_df['Home_On_Court_IDs'] = None

    for index, df in enumerate(qtr_box_dfs, start=1):
        df['PERIOD'] = index

        period_sub_df = pbp_df[(pbp_df['EVENTMSGTYPE'] == 8) & (pbp_df['PERIOD'] == index)]
        period_sub_df = period_sub_df.drop_duplicates(subset=['Sub_Out_ID'], keep='first')

        period_sub_df['Sub_Num'] = period_sub_df.groupby('PLAYER2_TEAM_ABBREVIATION').cumcount() + 1

        period_sub_df['isStarter'] = 0

        # get starters by loopiong through df and checking that person getting subbed out hasnt already been subbed in
        for i in period_sub_df.index:
            if period_sub_df.loc[i, 'Sub_Out_ID'] not in list(period_sub_df.loc[:i - 1, 'Sub_In_ID']):
                period_sub_df.at[i, 'isStarter'] = 1

        starters_df = period_sub_df[period_sub_df['isStarter'] == 1]
        starter_ids = list(starters_df['Sub_Out_ID'])

        df['isStarter'] = np.where(df['PLAYER_ID'].isin(starter_ids), 1,
                                   np.where(df['PERIOD'] < 5,
                                            np.where(df['MIN'] == '12:00', 1, 0),
                                            np.where(df['MIN'] == '5:00', 1, 0)
                                            )
                                   )

        away_starters = list(df[(df['TEAM_ABBREVIATION'] == away_abbr) & (df['isStarter'] == 1)]['PLAYER_NAME'])
        away_starters_ids = list(df[(df['TEAM_ABBREVIATION'] == away_abbr) & (df['isStarter'] == 1)]['PLAYER_ID'])
        home_starters = list(df[(df['TEAM_ABBREVIATION'] == home_abbr) & (df['isStarter'] == 1)]['PLAYER_NAME'])
        home_starters_ids = list(df[(df['TEAM_ABBREVIATION'] == home_abbr) & (df['isStarter'] == 1)]['PLAYER_ID'])

        if index < 5:
            qtr_start_index = pbp_df.loc[(pbp_df['PERIOD'] == index) & (pbp_df['PCTIMESTRING'] == '12:00')].index[0]
        else:
            qtr_start_index = pbp_df.loc[(pbp_df['PERIOD'] == index) & (pbp_df['PCTIMESTRING'] == '5:00')].index[0]

        pbp_df.at[qtr_start_index, 'Away_On_Court'] = away_starters
        pbp_df.at[qtr_start_index, 'Away_On_Court_IDs'] = away_starters_ids
        pbp_df.at[qtr_start_index, 'Home_On_Court'] = home_starters
        pbp_df.at[qtr_start_index, 'Home_On_Court_IDs'] = home_starters_ids

    pbp_df = fill_lineup_forward(pbp_df, 'Away')
    pbp_df = fill_lineup_forward(pbp_df, 'Home')

    mlb = MultiLabelBinarizer()

    pbp_df = pbp_df.merge(
        pd.DataFrame(mlb.fit_transform(pbp_df['Away_On_Court_IDs']), columns=mlb.classes_, index=pbp_df.index),
        on=pbp_df.index,
        how='left')
    away_ids = mlb.classes_
    pbp_df = pbp_df.drop(columns=['key_0'])
    pbp_df = pbp_df.merge(
        pd.DataFrame(mlb.fit_transform(pbp_df['Home_On_Court_IDs']), columns=mlb.classes_, index=pbp_df.index),
        on=pbp_df.index,
        how='left')
    home_ids = mlb.classes_

    pbp_df['away_num_players_on_court'] = 0
    on_court_count = pbp_df['away_num_players_on_court']
    for pid in away_ids:
        on_court_count = on_court_count + pbp_df[pid]

    pbp_df['away_num_players_on_court'] = on_court_count

    pbp_df['home_num_players_on_court'] = 0
    on_court_count = pbp_df['home_num_players_on_court']
    for pid in home_ids:
        on_court_count = on_court_count + pbp_df[pid]

    pbp_df['home_num_players_on_court'] = on_court_count

    pbp_df['GameTime'] = pd.to_datetime(pbp_df['PCTIMESTRING'], format='%M:%S')
    pbp_df['PeriodEndTime'] = np.where(pbp_df['PERIOD'] < 5,
                                       pd.Timedelta(minutes=12) * pbp_df['PERIOD'],
                                       (pd.Timedelta(minutes=12) * 4) + (
                                               pd.Timedelta(minutes=5) * (pbp_df['PERIOD'] - 4)))

    pbp_df['PeriodEndTime'] = pd.to_datetime(pbp_df['PeriodEndTime']) - pd.Timedelta(days=25567)
    pbp_df['ElapsedGameTime'] = pbp_df['PeriodEndTime'] - pbp_df['GameTime']

    pbp_df['SCORE'] = pbp_df['SCORE'].ffill()
    pbp_df['SCORE'] = pbp_df['SCORE'].fillna('0 - 0')
    pbp_df[['Away_SCORE', 'Home_SCORE']] = pbp_df['SCORE'].str.split(' - ', expand=True)
    pbp_df['Away_SCORE'] = pbp_df['Away_SCORE'].astype(float)
    pbp_df['Home_SCORE'] = pbp_df['Home_SCORE'].astype(float)

    box_data = boxscoreadvancedv2.BoxScoreAdvancedV2(game_id=game_id)

    box_json = json.loads(box_data.get_json())

    rows = box_json['resultSets'][0]['rowSet']
    headers = box_json['resultSets'][0]['headers']

    full_box_df = pd.DataFrame(rows)
    full_box_df.columns = headers
    full_box_df['isStarter'] = np.where(full_box_df['START_POSITION'].str.contains('[A-Z]'), 1, 0)
    full_box_df['MIN'] = pd.to_datetime(full_box_df['MIN'], format='%M:%S')
    full_box_df = full_box_df.sort_values(['TEAM_ABBREVIATION', 'isStarter', 'MIN'], ascending=False)
    full_box_df['MIN'] = full_box_df['MIN'].dt.strftime('%M:%S')
    away_ids = list(
        full_box_df[(full_box_df['TEAM_ABBREVIATION'] == away_abbr) & ~(full_box_df['MIN'] == 'NaT')]['PLAYER_ID'])
    home_ids = list(
        full_box_df[(full_box_df['TEAM_ABBREVIATION'] == home_abbr) & ~(full_box_df['MIN'] == 'NaT')]['PLAYER_ID'])

    away_stints = collect_stints(full_box_df, pbp_df, away_ids, False)
    home_stints = collect_stints(full_box_df, pbp_df, home_ids, True)

    away_rotation_file_name = graph_stints(away_stints,  away_abbr, save_path)
    home_rotation_file_name = graph_stints(home_stints, home_abbr, save_path)

    return away_rotation_file_name, home_rotation_file_name
