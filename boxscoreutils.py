import requests
import json
from matplotlib import pyplot as plt
from matplotlib.patches import Circle, Rectangle, Arc
import pandas as pd
import numpy as np
from nba_api.stats.endpoints import shotchartdetail
from nba_api.stats.endpoints import boxscoretraditionalv2


def draw_court(ax=None, color='slategrey', lw=2, outer_lines=False):
    # If an axes object isn't provided to plot onto, just get current one
    if ax is None:
        ax = plt.gca()

    # Create the various parts of an NBA basketball court

    # Create the basketball hoop
    # Diameter of a hoop is 18" so it has a radius of 9", which is a value
    # 7.5 in our coordinate system
    hoop = Circle((0, 0), radius=7.5, linewidth=lw, color=color, fill=False)

    # Create backboard
    backboard = Rectangle((-30, -7.5), 60, -1, linewidth=lw, color=color)

    # The paint
    # Create the outer box 0f the paint, width=16ft, height=19ft
    outer_box = Rectangle((-80, -47.5), 160, 190, linewidth=lw, color=color,
                          fill=False)
    # Create the inner box of the paint, widt=12ft, height=19ft
    inner_box = Rectangle((-60, -47.5), 120, 190, linewidth=lw, color=color,
                          fill=False)

    # Create free throw top arc
    top_free_throw = Arc((0, 142.5), 120, 120, theta1=0, theta2=180,
                         linewidth=lw, color=color, fill=False)
    # Create free throw bottom arc
    bottom_free_throw = Arc((0, 142.5), 120, 120, theta1=180, theta2=0,
                            linewidth=lw, color=color, linestyle='dashed')
    # Restricted Zone, it is an arc with 4ft radius from center of the hoop
    restricted = Arc((0, 0), 80, 80, theta1=0, theta2=180, linewidth=lw,
                     color=color)

    # Three point line
    # Create the side 3pt lines, they are 14ft long before they begin to arc
    corner_three_a = Rectangle((-220, -47.5), 0, 140, linewidth=lw,
                               color=color)
    corner_three_b = Rectangle((220, -47.5), 0, 140, linewidth=lw, color=color)
    # 3pt arc - center of arc will be the hoop, arc is 23'9" away from hoop
    # I just played around with the theta values until they lined up with the
    # threes
    three_arc = Arc((0, 0), 475, 475, theta1=22, theta2=158, linewidth=lw,
                    color=color)

    # Center Court
    center_outer_arc = Arc((0, 422.5), 120, 120, theta1=180, theta2=0,
                           linewidth=lw, color=color)
    center_inner_arc = Arc((0, 422.5), 40, 40, theta1=180, theta2=0,
                           linewidth=lw, color=color)

    # List of the court elements to be plotted onto the axes
    court_elements = [hoop, backboard, outer_box, inner_box, top_free_throw,
                      bottom_free_throw, restricted, corner_three_a,
                      corner_three_b, three_arc, center_outer_arc,
                      center_inner_arc]

    if outer_lines:
        # Draw the half court line, baseline and side out bound lines
        outer_lines = Rectangle((-250, -47.5), 500, 470, linewidth=lw,
                                color=color, fill=False)
        court_elements.append(outer_lines)

    # Add the court elements onto the axes
    for element in court_elements:
        ax.add_patch(element)

    return ax


def get_games(date=None):
    games_page = requests.get('https://api.pbpstats.com/get-games/nba?Season=2020-21&SeasonType=Regular%2BSeason')
    games_data = games_page.json()
    games_df = pd.DataFrame(games_data['results'])
    games_df = games_df.sort_values('Date', ascending=False)
    if date is None:
        recent_date = games_df['Date'].max()
        return games_df[games_df['Date'] == recent_date]
    else:
        return games_df[games_df['Date'] == date]


def get_league_average_shot_data():
    shot_json = shotchartdetail.ShotChartDetail(
        team_id=0,
        player_id=0,
        context_measure_simple='FGA',
        season_nullable='2020-21',
        season_type_all_star='Regular Season')
    shot_data = json.loads(shot_json.get_json())
    la_relevant_data = shot_data['resultSets'][1]
    la_headers = la_relevant_data['headers']
    la_rows = la_relevant_data['rowSet']

    league_average_df = pd.DataFrame(la_rows)
    league_average_df.columns = la_headers

    league_average_zones_df = league_average_df.groupby('SHOT_ZONE_BASIC').agg({'FGM': 'sum', 'FGA': 'sum'})
    league_average_zones_df['fg%'] = ((league_average_zones_df['FGM'] / league_average_zones_df['FGA']) * 100).round(
        2).astype(str) + '%'
    league_average_zones_df['freq%'] = ((league_average_zones_df['FGA'] / league_average_zones_df[
        'FGA'].sum()) * 100).round(2).astype(str) + '%'

    return league_average_zones_df


def get_team_shot_data(df, team_id, game_id):
    shot_json = shotchartdetail.ShotChartDetail(
        team_id=team_id,
        player_id=0,
        game_id_nullable=game_id,
        context_measure_simple='FGA',
        season_nullable='2020-21',
        season_type_all_star='Regular Season')

    shot_data = json.loads(shot_json.get_json())
    relevant_data = shot_data['resultSets'][0]
    headers = relevant_data['headers']
    rows = relevant_data['rowSet']

    shots_df = pd.DataFrame(rows)
    shots_df.columns = headers
    return shots_df


def parse_shot_data(df, la_df):
    '''converts shot dataframe in dict of makes and misses by zone'''
    total_shots = df.shape[0]
    makes_df = df[df['SHOT_MADE_FLAG'] == 1]
    misses_df = df[df['SHOT_MADE_FLAG'] == 0]
    shot_data = {}
    makes_dict = dict(makes_df['SHOT_ZONE_BASIC'].value_counts())
    misses_dict = dict(misses_df['SHOT_ZONE_BASIC'].value_counts())
    # add league average data
    la_dict = la_df.to_dict()
    for key, value in la_dict['fg%'].items():
        shot_data[key] = {'la_average': 0,
                          'la_freq': 0,
                          'makes': 0,
                          'misses': 0}
        shot_data[key]['la_average'] = value

    for key, value in la_dict['freq%'].items():
        shot_data[key]['la_freq'] = value

    for key, value in makes_dict.items():
        shot_data[key]['makes'] = value

    for key, value in misses_dict.items():
        shot_data[key]['misses'] = value

    shot_data['total_shots'] = total_shots

    return shot_data, makes_df, misses_df


def plot_shot_chart(df, la_df, chart_title, file_name):
    shot_data, makes_df, misses_df = parse_shot_data(df, la_df)
    fig = plt.figure(figsize=(12, 11))
    ax = draw_court(outer_lines=True)
    plt.scatter(misses_df['LOC_X'], misses_df['LOC_Y'], color='red', alpha=0.5)
    plt.scatter(makes_df['LOC_X'], makes_df['LOC_Y'], color='green', alpha=0.5)

    possible_zones = [{'name': 'Above the Break 3',
                       'box_coordinates': (0, 280),
                       },
                      {'name': 'Mid-Range',
                       'box_coordinates': (0, 180),
                       },
                      {'name': 'Restricted Area',
                       'box_coordinates': (0, -50),
                       },
                      {'name': 'In The Paint (Non-RA)',
                       'box_coordinates': (0, 100),
                       },
                      {'name': 'Left Corner 3',
                       'box_coordinates': (-255, -50),
                       },
                      {'name': 'Right Corner 3',
                       'box_coordinates': (240, -50),
                       },
                      {'name': 'Backcourt',
                       'box_coordinates': (0, 460),
                       }
                      ]
    for zone in possible_zones:
        try:
            zone_data = shot_data[zone['name']]
            zone_raw = f"{zone_data['makes']}/{zone_data['misses'] + zone_data['makes']}"
            zone_pct = f"FG%: {round((zone_data['makes'] / (zone_data['misses'] + zone_data['makes'])) * 100, 2)}%"
            zone_freq = f"freq%: {round(((zone_data['misses'] + zone_data['makes']) / shot_data['total_shots']) * 100, 2)}%"
        except:
            zone_raw = "0/0"
            zone_pct = "FG%: 0%"
            zone_freq = "freq%: 0%"

        text = f"{zone_raw}\n{zone_pct}\n{zone_freq}\n\nLA FG%: {zone_data['la_average']}\nLA freq: {zone_data['la_freq']}"

        ax.text(zone['box_coordinates'][0], zone['box_coordinates'][1], text,
                color='black',
                weight='bold',
                bbox={'facecolor': 'whitesmoke', 'alpha': .7, 'edgecolor': 'black', 'pad': 1},
                ha='center',
                va='center')

    plt.xlim(-300, 300)
    plt.ylim(-100, 500)
    plt.title(chart_title, loc='left')
    # plt.show()
    fig.savefig(file_name)


def create_box_score(df, game_id):
    # create box score
    # Min Pts, RIM, 3pt, FTs, TS%, , Usage, RBD, Ast, TO, , +/-, Net

    # create rim 3pt and FTs columns
    df = df.fillna('0')
    df['FG'] = (df['FG2M'].astype(int) + df['FG3M'].astype(int)).astype(
        str) + '/' + (df['FG2A'].astype(int) + df['FG3A'].astype(int)).astype(str)
    df['rim'] = df['AtRimFGM'].astype(int).astype(str) + '/' + df['AtRimFGA'].fillna(
        '0').astype(int).astype(str)
    df['3pt'] = df['FG3M'].astype(int).astype(str) + '/' + df['FG3A'].astype(
        int).astype(str)
    df['FTs'] = df['FtPoints'].astype(int).astype(str) + '/' + df['FTA'].astype(
        int).astype(str)
    df['Ast (rim)'] = df['Assists'].astype(int).astype(str) + '(' + df[
        'AtRimAssists'].astype(int).astype(str) + ')'
    df['O/DPoss'] = df['OffPoss'].astype(int).astype(str) + '/' + df['DefPoss'].fillna(
        '0').astype(int).astype(str)

    columns_to_use = ['EntityId', 'Name', 'Minutes', 'Points', 'FG', 'rim', '3pt', 'FTs', 'TsPct', 'Usage', 'Rebounds',
                      'Ast (rim)', 'Turnovers', 'Steals', 'Blocks', 'O/DPoss', ]

    for col in columns_to_use:
        if col not in df.columns:
            df[col] = 0

    box_df = df[columns_to_use]

    box_json = boxscoretraditionalv2.BoxScoreTraditionalV2(game_id)
    box_data = json.loads(box_json.get_json())

    nba_box_df = pd.DataFrame(box_data['resultSets'][0]['rowSet'])
    nba_box_df.columns = box_data['resultSets'][0]['headers']

    nba_box_df['isStarter'] = np.where(nba_box_df['START_POSITION'] != '', 1, 0)
    nba_box_df = nba_box_df[['PLAYER_ID', 'isStarter', 'PLUS_MINUS']]
    nba_box_df['PLAYER_ID'] = nba_box_df['PLAYER_ID'].astype('str')
    box_df = box_df.merge(nba_box_df, left_on='EntityId', right_on='PLAYER_ID', how='left')
    box_df = box_df.fillna('0')
    box_df = box_df.sort_values(['isStarter', 'Minutes'], ascending=False)
    columns_to_use.append('PLUS_MINUS')

    columns_to_use.pop(0)
    box_df = box_df[columns_to_use]
    box_df = box_df.set_index('Name')
    box_df.columns = ['Min', 'Pts', 'FG', 'Rim', '3pt', 'FTs', 'TS%', 'USG%', 'Reb', 'Ast(rim)', 'TO', 'Stl', 'Blk',
                      'O/D Poss', '+/-'
                      ]
    box_df['TS%'] = (box_df['TS%'].astype('float') * 100).round(2).astype(str) + '%'
    box_df['USG%'] = box_df['USG%'].astype(float).round(2).astype(str) + '%'
    #box_df['+/-'] = box_df['+/-'].apply(lambda x: "+" + str(x) if x > 0 else x)
    #box_df['+/-'] = box_df['+/-'].astype(str)

    return box_df
