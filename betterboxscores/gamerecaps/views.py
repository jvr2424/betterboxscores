from django.shortcuts import render
from django.http import JsonResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.http import HttpResponse
from .serializers import PlayergameresultsSerializer
import requests

from gamerecaps.models import Playergameresults, Teamgameresults, Teams, Players


def allgamescores(request, year=None, month=None, day=None):
    # date = '2021-01-22'
    # datetime.today().strftime('%Y-%m-%d')

    if None in [year, month, day]:
        date = Teamgameresults.objects.order_by('-game_date').values('game_date').distinct()[0]['game_date']
    else:
        date = f'{year}-{month}-{day}'

    away_boxscores = Teamgameresults.objects.filter(game_date=date, is_home=False).order_by('game_id')
    home_boxscores = Teamgameresults.objects.filter(game_date=date, is_home=True).order_by('game_id')

    boxscores_by_game = []
    for away, home in zip(away_boxscores, home_boxscores):
        boxscores_by_game.append({'away': away,
                                  'home': home})

    previous_dates = list(
        Teamgameresults.objects.filter(game_date__range=["2011-01-01", date]).order_by('game_date').values(
            'game_date').distinct())[:-1]
    previous_dates_new = []
    for pdate in previous_dates:
        date_split = pdate['game_date'].strftime('%Y-%m-%d').split('-')
        new_pdate = {'year': date_split[0],
                     'month': date_split[1],
                     'day': date_split[2],
                     'date': pdate['game_date'].strftime('%Y-%m-%d')}

        previous_dates_new.append(new_pdate)

    future_dates = list(
        Teamgameresults.objects.filter(game_date__range=[date, "2111-01-01"]).order_by('game_date').values(
            'game_date').distinct())[1:]
    future_dates_new = []
    for pdate in future_dates:
        date_split = pdate['game_date'].strftime('%Y-%m-%d').split('-')
        new_pdate = {'year': date_split[0],
                     'month': date_split[1],
                     'day': date_split[2],
                     'date': pdate['game_date'].strftime('%Y-%m-%d')}

        future_dates_new.append(new_pdate)
    return render(request, 'gamerecaps/gamescores.html',
                  context={'games': boxscores_by_game, 'previous_dates': previous_dates_new,
                           'future_dates': future_dates_new})


def gamedetails(request, game_id):
    away_boxscore = Teamgameresults.objects.filter(game_id=game_id, is_home=False)[0]
    home_boxscore = Teamgameresults.objects.filter(game_id=game_id, is_home=True)[0]

    return render(request, 'gamerecaps/template.html', context={'game': {'away': away_boxscore,
                                                                         'home': home_boxscore}
                                                                }
                  )


def todaysgames(request):
    page = requests.get("https://cdn.nba.com/static/json/liveData/scoreboard/todaysScoreboard_00.json")
    json_data = page.json()['scoreboard']['games']
    for game in json_data:
        print(game['gameLeaders']['awayLeaders']['name'])
        if ' ' in game['gameLeaders']['awayLeaders']['name']:
            name_split = game['gameLeaders']['awayLeaders']['name'].split(' ')
            game['gameLeaders']['awayLeaders']['name_parsed'] = name_split[0][0] + '. ' + name_split[1]
        if ' ' in game['gameLeaders']['homeLeaders']['name']:
            name_split = game['gameLeaders']['homeLeaders']['name'].split(' ')
            game['gameLeaders']['homeLeaders']['name_parsed'] = name_split[0][0] + '. ' + name_split[1]

    return render(request, 'gamerecaps/todaysgames.html', context={'games': json_data})


def todaysgames_boxscore(request, game_id):
    live_boxscore = requests.get(f'https://cdn.nba.com/static/json/liveData/boxscore/boxscore_{game_id}.json')
    live_boxscore_json = live_boxscore.json()
    return render(request, 'gamerecaps/todaysboxscore.html', context={'box_score': live_boxscore_json})

@api_view(['GET'])
def apiOverview(request):
    api_urls = {
        'game-players': '/game-players/<str:game_id>',
        'game-teams': '/game-teams/<str:game_id>',
    }
    return Response(api_urls)


@api_view(['GET'])
def playerGames(request, game_id):
    players_game = Playergameresults.objects.filter(game_id=game_id)
    serializer = PlayergameresultsSerializer(players_game, many=True)
    return Response(serializer.data)
