from django.core.management.base import BaseCommand, CommandError
from django.core.files import File
from custommodules import buildboxscore
from custommodules import etldataload
import sqlalchemy
import os

# run with python manage.py create_game_data
class Command(BaseCommand):
    help = 'collects last nights games'

    def handle(self, *args, **options):
        # Add yout logic here
        # This is the task that will be run
        #f'postgresql://{user}:{password}@{address}/BetterBoxScores'
        engine = sqlalchemy.create_engine(os.environ.get('DATABASE_URL'))
        con = engine.connect()

        etldataload.add_new_players(con)
        etldataload.collect_and_write_data(con)#date='2021-01-28'



        #games_data = buildboxscore.get_game_charts() #'2021-01-21'

        # for game in games_data:
        #     box = BoxScoreTables(gameid=game['gameid'],
        #                          away_teamid=game['away_teamid'],
        #                          home_teamid=game['home_teamid'],
        #                          away_score=game['away_score'],
        #                          home_score=game['home_score'],
        #                          away_abbr=game['away_abbr'],
        #                          home_abbr=game['home_abbr'],
        #                          away_rotation_img_location=game['away_rotation_img_location'],
        #                          home_rotation_img_location=game['home_rotation_img_location'],
        #                          away_shot_img_location=game['away_shot_img_location'],
        #                          home_shot_img_location=game['home_shot_img_location'],
        #                          away_box_html=game['away_box_html'],
        #                          home_box_html=game['home_box_html'],
        #                          date=game['date'])
        #     box.save()
            # gameid = models.CharField(max_length=200)
            # away_teamid = models.BigIntegerField(default=0)
            # home_teamid = models.BigIntegerField(default=0)
            #
            # away_score = models.BigIntegerField(default=0)
            # home_score = models.BigIntegerField(default=0)
            #
            # away_abbr = models.CharField(max_length=200)
            # home_abbr = models.CharField(max_length=200)
            #
            # # rotation_img_location = models.ImageField()
            # away_rotation_img_location = models.CharField(max_length=10000000000)
            # away_shot_img_location = models.CharField(max_length=10000000000)
            # home_rotation_img_location = models.CharField(max_length=10000000000)
            # home_shot_img_location = models.CharField(max_length=10000000000)
            #
            # away_box_html = models.CharField(max_length=10000000000)
            # home_box_html = models.CharField(max_length=10000000000)
            # date = models.DateField()

        self.stdout.write(f"Done")
