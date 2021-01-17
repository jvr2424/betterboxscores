import requests
import json
from matplotlib import pyplot as plt
import pandas as pd
from nba_api.stats.endpoints import shotchartdetail
from matplotlib.patches import Circle, Rectangle, Arc
import boxscoreutils
import buildrotation
import jinja2
import time
import os
from datetime import datetime

recent_games_df = boxscoreutils.get_games() # date format '2021-01-14'
game_date = list(recent_games_df['Date'])[0]
recent_game_ids = list(recent_games_df['GameId'])

games_dicts = []

la_df = boxscoreutils.get_league_average_shot_data( )

for game_id in recent_game_ids:
    print(game_id)
    game = requests.get(f'https://api.pbpstats.com/get-game-stats?Type=Player&GameId={game_id}')
    game_data = game.json()
    away_team_id = game_data['away_team_id']
    home_team_id = game_data['home_team_id']

    away_df = pd.DataFrame(game_data['stats']['Away']['FullGame'])
    home_df = pd.DataFrame(game_data['stats']['Home']['FullGame'])

    save_path = os.path.join('game data', game_date)
    if not os.path.exists(save_path):
        os.makedirs(save_path)

    # create shot charts
    away_shots_df = boxscoreutils.get_team_shot_data(away_df, away_team_id, game_id)
    home_shots_df = boxscoreutils.get_team_shot_data(home_df, home_team_id, game_id)

    away_shots_save_path = os.path.join(save_path, f"{game_data['away_team_abbreviation']}shots.png")
    home_shots_save_path = os.path.join(save_path, f"{game_data['home_team_abbreviation']}shots.png")

    boxscoreutils.plot_shot_chart(away_shots_df, la_df, game_data['away_team_abbreviation'],
                                  away_shots_save_path)
    boxscoreutils.plot_shot_chart(home_shots_df, la_df, game_data['home_team_abbreviation'],
                                  home_shots_save_path)

    # create plyaer box scores
    away_player_box_df = boxscoreutils.create_box_score(away_df, game_id)
    home_player_box_df = boxscoreutils.create_box_score(home_df, game_id)

    # create rotation chart
    awayrotaion, homerotation = buildrotation.build_rotation(game_id, game_data['away_team_abbreviation'],
                                                             game_data['home_team_abbreviation'],save_path)

    games_dicts.append({'home': game_data['home_team_abbreviation'],
                        'away': game_data['away_team_abbreviation'],
                        'awayTable': away_player_box_df.to_html(classes='table', justify='left'),
                        'homeTable': home_player_box_df.to_html(classes='table', justify='left'),
                        'awayshots': away_shots_save_path,
                        'homeshots': home_shots_save_path,
                        'awayscore': game_data['team_results']['Away']['FullGame']['Points'],
                        'homescore': game_data['team_results']['Home']['FullGame']['Points'],
                        'awayrotaion': awayrotaion,
                        'homerotaion': homerotation
                        })
    # styler = df.style.applymap(color_negative_red)

game_date = datetime.strptime(game_date, '%Y-%m-%d').strftime('%m-%d-%Y')
# Template handling
env = jinja2.Environment(loader=jinja2.FileSystemLoader(searchpath=''))
template = env.get_template('template.html')
html = template.render(games=games_dicts, game_date=game_date)

# Write the HTML file
html_file_path = os.path.join(save_path, f'NBA Games {game_date}.html')
with open(html_file_path, 'w') as f:
    f.write(html)
