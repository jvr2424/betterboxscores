from rest_framework import serializers
from .models import Teamgameresults, Playergameresults, Players, Teams

class TeamSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teams
        fields = '__all__'

class PlayersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Players
        fields = '__all__'


class PlayergameresultsSerializer(serializers.ModelSerializer):
    defensive_rating = serializers.DecimalField(max_digits=10, decimal_places=2)
    effective_field_goal_pct = serializers.DecimalField(max_digits=10, decimal_places=2)
    offensive_rating = serializers.DecimalField(max_digits=10, decimal_places=2)
    pace = serializers.DecimalField(max_digits=10, decimal_places=2)
    true_shooting_pct = serializers.DecimalField(max_digits=10, decimal_places=2)
    usage_pct = serializers.DecimalField(max_digits=10, decimal_places=2)
    player = PlayersSerializer()


    class Meta:
        model = Playergameresults
        fields = '__all__'
