import pandas as pd
import dash
import dash_table
import dash_html_components as html
import dash_core_components as dcc
import plotly
import requests
import json
from matplotlib import pyplot as plt
import pandas as pd
import seaborn as sns
from nba_api.stats.endpoints import shotchartdetail
from matplotlib.patches import Circle, Rectangle, Arc
import boxscoreutils
import buildrotation
import jinja2
import time
from datetime import datetime

recent_games_df = boxscoreutils.get_games()
game_date = list(recent_games_df['Date'])[0]
recent_game_ids = list(recent_games_df['GameId'])

games_dicts = []
box_scores = []
count = 0

print(count)
if count == 0:
    for game_id in recent_game_ids:
        count += 1
        print(game_id)
        game = requests.get(f'https://api.pbpstats.com/get-game-stats?Type=Player&GameId={game_id}')
        game_data = game.json()
        away_team_id = game_data['away_team_id']
        home_team_id = game_data['home_team_id']

        away_df = pd.DataFrame(game_data['stats']['Away']['FullGame'])
        home_df = pd.DataFrame(game_data['stats']['Home']['FullGame'])

        away_player_box_df = boxscoreutils.create_box_score(away_df, game_id).reset_index()
        home_player_box_df = boxscoreutils.create_box_score(home_df, game_id).reset_index()

        box_scores.append(dash_table.DataTable(
            id='table' + str(count),
            columns=[{"name": i, "id": i} for i in away_player_box_df.columns],
            data=away_player_box_df.to_dict('records'),
            sort_action='native'
        ))
        box_scores.append(html.Div(id='datatable-interactivity-container' + str(count)))
        box_scores.append(dash_table.DataTable(
            id='table' + str(count + 1),
            columns=[{"name": i, "id": i} for i in home_player_box_df.columns],
            data=home_player_box_df.to_dict('records'),
            sort_action='native'
        ))
        box_scores.append(html.Div(id='datatable-interactivity-container' + str(count + 1)))

box_scores.append(dcc.Interval(disabled=True))
app = dash.Dash(__name__)
app.layout = html.Div(box_scores)

if __name__ == '__main__':
    app.run_server(debug=True)
