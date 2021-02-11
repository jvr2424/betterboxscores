from django.urls import include, path
from . import views

from rest_framework import routers
# router = routers.DefaultRouter()
# router.register(r'game-players', views.PlayerGameResultsViewSet)
# router.register(r'game-team', views.TeamGameResultsViewSet)
# path('', include(router.urls)),
# path('api/', include('rest_framework.urls',namespace='rest_framework')),
urlpatterns = [
    path('', views.allgamescores, name='allgamescores'),
    path('<int:year>/<int:month>/<int:day>', views.allgamescores, name='allgamescores'),
    path('games/<str:game_id>', views.gamedetails, name='gamedetails'),
    path('todaysgames', views.todaysgames, name='todaysgames'),
    path('todaysgames/<str:game_id>', views.todaysgames_boxscore, name='todaysgames_boxscore'),

    path('api/', views.apiOverview, name="api-overview"),
    path('api/games-players/<str:game_id>', views.playerGames, name="games-players"),
]