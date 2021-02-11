import requests
import pandas as pd
from custommodules import boxscoreutils
from custommodules import buildrotation
import jinja2
import os
from datetime import datetime


def get_game_charts(date=None):
    '''
    :param date: game date of games to return: format '2021-01-14' string 'YYY-MM-DD'
    :return: create html file and returns all data it creates 1 rotation chart, 1 shot chart, 1 box score per team per game
    '''
    app_name = 'gamerecaps'
    recent_games_df = boxscoreutils.get_games(date=date)  # date format '2021-01-14'
    game_date = list(recent_games_df['Date'])[0]
    recent_game_ids = list(recent_games_df['GameId'])

    games_dicts = []

    la_df = boxscoreutils.get_league_average_shot_data()

    for game_id in recent_game_ids:
        print(game_id)
        game = requests.get(f'https://api.pbpstats.com/get-game-stats?Type=Player&GameId={game_id}')
        game_data = game.json()
        away_team_id = game_data['away_team_id']
        home_team_id = game_data['home_team_id']

        away_df = pd.DataFrame(game_data['stats']['Away']['FullGame'])
        home_df = pd.DataFrame(game_data['stats']['Home']['FullGame'])

        save_path = f'{app_name}/{game_date}'
        #if not os.path.exists(save_path):
        #    os.makedirs(save_path)

        # create shot charts
        away_shots_df = boxscoreutils.get_team_shot_data(away_df, away_team_id, game_id)
        home_shots_df = boxscoreutils.get_team_shot_data(home_df, home_team_id, game_id)

        away_shots_save_path = f"{save_path}/{game_data['away_team_abbreviation']}shots.png"
        home_shots_save_path = f"{save_path}/{game_data['home_team_abbreviation']}shots.png"

        boxscoreutils.plot_shot_chart(away_shots_df, la_df, game_data['away_team_abbreviation'],
                                      away_shots_save_path)
        boxscoreutils.plot_shot_chart(home_shots_df, la_df, game_data['home_team_abbreviation'],
                                      home_shots_save_path)

        # create plyaer box scores
        away_player_box_df = boxscoreutils.create_box_score(away_df, game_id)
        home_player_box_df = boxscoreutils.create_box_score(home_df, game_id)

        # create rotation chart
        awayrotaion, homerotation = buildrotation.build_rotation(game_id, game_data['away_team_abbreviation'],
                                                                 game_data['home_team_abbreviation'], save_path)

        games_dicts.append({'gameid': game_id,
                            'away_teamid': away_team_id,
                            'home_teamid': home_team_id,
                            'away_score': game_data['team_results']['Away']['FullGame']['Points'],
                            'home_score': game_data['team_results']['Home']['FullGame']['Points'],
                            'away_abbr': game_data['away_team_abbreviation'],
                            'home_abbr': game_data['home_team_abbreviation'],
                            'away_rotation_img_location': awayrotaion,
                            'home_rotation_img_location': homerotation,
                            'away_shot_img_location': away_shots_save_path,
                            'home_shot_img_location': home_shots_save_path,
                            'away_box_html': away_player_box_df.to_html(classes='table', justify='left'),
                            'home_box_html': home_player_box_df.to_html(classes='table', justify='left'),
                            'date': game_date,
                            })
        # styler = df.style.applymap(color_negative_red)

    game_date = datetime.strptime(game_date, '%Y-%m-%d').strftime('%m-%d-%Y')
    # Template handling
    #env = jinja2.Environment(loader=jinja2.FileSystemLoader(searchpath=''))
    #template = env.get_template('template.html')
    #html = template.render(games=games_dicts, game_date=game_date)

    # Write the HTML file
    #html_file_path = os.path.join(save_path, f'NBA Games {game_date}.html')
    #with open(html_file_path, 'w') as f:
    #    f.write(html)

    return games_dicts


if __name__ == '__main__':
    get_game_charts()
