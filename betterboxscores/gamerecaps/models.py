# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Leagueaveragetotals(models.Model):
    season = models.CharField(max_length=1000, blank=True, null=True)
    points = models.IntegerField(blank=True, null=True)
    rebounds = models.IntegerField(blank=True, null=True)
    offensive_rebounds = models.IntegerField(blank=True, null=True)
    defensive_rebounds = models.IntegerField(blank=True, null=True)
    assists = models.IntegerField(blank=True, null=True)
    rim_assists = models.IntegerField(blank=True, null=True)
    turnovers = models.IntegerField(blank=True, null=True)
    live_turnovers = models.IntegerField(blank=True, null=True)
    free_throws_made = models.IntegerField(blank=True, null=True)
    free_throws_attempted = models.IntegerField(blank=True, null=True)
    field_goals_made = models.IntegerField(blank=True, null=True)
    field_goals_attempted = models.IntegerField(blank=True, null=True)
    threes_made = models.IntegerField(blank=True, null=True)
    threes_attempted = models.IntegerField(blank=True, null=True)
    rim_attempted = models.IntegerField(blank=True, null=True)
    rim_made = models.IntegerField(blank=True, null=True)
    possessions = models.IntegerField(blank=True, null=True)
    true_shooting_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    effective_field_goal_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    rebound_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'leagueaveragetotals'


class Playergameresults(models.Model):
    game_id = models.CharField(primary_key=True, max_length=1000)
    player = models.ForeignKey('Players', models.DO_NOTHING)
    team_id = models.IntegerField(blank=True, null=True)
    game_date = models.DateField(blank=True, null=True)
    season = models.CharField(max_length=1000, blank=True, null=True)
    rebounds = models.IntegerField(blank=True, null=True)
    offensive_rebounds = models.IntegerField(blank=True, null=True)
    defensive_rebounds = models.IntegerField(blank=True, null=True)
    assists = models.IntegerField(blank=True, null=True)
    rim_assists = models.IntegerField(blank=True, null=True)
    turnovers = models.IntegerField(blank=True, null=True)
    live_turnovers = models.IntegerField(blank=True, null=True)
    free_throws_made = models.IntegerField(blank=True, null=True)
    free_throws_attempted = models.IntegerField(blank=True, null=True)
    field_goals_made = models.IntegerField(blank=True, null=True)
    field_goals_attempted = models.IntegerField(blank=True, null=True)
    threes_made = models.IntegerField(blank=True, null=True)
    threes_attempted = models.IntegerField(blank=True, null=True)
    rim_attempted = models.IntegerField(blank=True, null=True)
    rim_made = models.IntegerField(blank=True, null=True)
    true_shooting_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    effective_field_goal_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    plus_minus = models.IntegerField(blank=True, null=True)
    steals = models.IntegerField(blank=True, null=True)
    blocks = models.IntegerField(blank=True, null=True)
    fouls = models.IntegerField(blank=True, null=True)
    minutes = models.CharField(max_length=1000, blank=True, null=True)
    offensive_possessions = models.IntegerField(blank=True, null=True)
    defensive_possessions = models.IntegerField(blank=True, null=True)
    points = models.IntegerField(blank=True, null=True)
    is_starter = models.BooleanField(blank=True, null=True)
    offensive_rating = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    defensive_rating = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    pace = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    is_home = models.BooleanField(blank=True, null=True)
    usage_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'playergameresults'
        unique_together = (('game_id', 'player'),)


class Players(models.Model):
    player_id = models.IntegerField(primary_key=True)
    first_name = models.CharField(max_length=1000, blank=True, null=True)
    last_name = models.CharField(max_length=1000, blank=True, null=True)
    team_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'players'


class Teams(models.Model):
    team_id = models.IntegerField(primary_key=True)
    team_name = models.CharField(max_length=1000, blank=True, null=True)
    abbr_name = models.CharField(max_length=1000, blank=True, null=True)
    city = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'teams'


class Playertotals(models.Model):
    player = models.OneToOneField(Players, models.DO_NOTHING, primary_key=True)
    season = models.CharField(max_length=1000, blank=True, null=True)
    team_id = models.OneToOneField(Teams, models.DO_NOTHING)
    game_date = models.DateField(blank=True, null=True)
    score = models.IntegerField(blank=True, null=True)
    rebounds = models.IntegerField(blank=True, null=True)
    offensive_rebounds = models.IntegerField(blank=True, null=True)
    defensive_rebounds = models.IntegerField(blank=True, null=True)
    assists = models.IntegerField(blank=True, null=True)
    rim_assists = models.IntegerField(blank=True, null=True)
    turnovers = models.IntegerField(blank=True, null=True)
    live_turnovers = models.IntegerField(blank=True, null=True)
    free_throws_made = models.IntegerField(blank=True, null=True)
    free_throws_attempted = models.IntegerField(blank=True, null=True)
    field_goals_made = models.IntegerField(blank=True, null=True)
    field_goals_attempted = models.IntegerField(blank=True, null=True)
    threes_made = models.IntegerField(blank=True, null=True)
    threes_attempted = models.IntegerField(blank=True, null=True)
    rim_attempted = models.IntegerField(blank=True, null=True)
    rim_made = models.IntegerField(blank=True, null=True)
    possessions = models.IntegerField(blank=True, null=True)
    true_shooting_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    effective_field_goal_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    rebound_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'playertotals'


class Standings(models.Model):
    team_id = models.IntegerField(primary_key=True)
    wins = models.IntegerField(blank=True, null=True)
    losses = models.IntegerField(blank=True, null=True)
    seed = models.IntegerField(blank=True, null=True)
    season = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'standings'


class Teamgameresults(models.Model):
    game_id = models.CharField(primary_key=True, max_length=1000)
    team = models.ForeignKey('Teams', models.DO_NOTHING)
    season = models.CharField(max_length=1000, blank=True, null=True)
    game_date = models.DateField(blank=True, null=True)
    score = models.IntegerField(blank=True, null=True)
    rebounds = models.IntegerField(blank=True, null=True)
    offensive_rebounds = models.IntegerField(blank=True, null=True)
    defensive_rebounds = models.IntegerField(blank=True, null=True)
    assists = models.IntegerField(blank=True, null=True)
    rim_assists = models.IntegerField(blank=True, null=True)
    turnovers = models.IntegerField(blank=True, null=True)
    live_turnovers = models.IntegerField(blank=True, null=True)
    free_throws_made = models.IntegerField(blank=True, null=True)
    free_throws_attempted = models.IntegerField(blank=True, null=True)
    field_goals_made = models.IntegerField(blank=True, null=True)
    field_goals_attempted = models.IntegerField(blank=True, null=True)
    threes_made = models.IntegerField(blank=True, null=True)
    threes_attempted = models.IntegerField(blank=True, null=True)
    rim_attempted = models.IntegerField(blank=True, null=True)
    rim_made = models.IntegerField(blank=True, null=True)
    true_shooting_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    effective_field_goal_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    rotation_chart_location = models.CharField(max_length=1000, blank=True, null=True)
    shot_chart_location = models.CharField(max_length=1000, blank=True, null=True)
    steals = models.IntegerField(blank=True, null=True)
    blocks = models.IntegerField(blank=True, null=True)
    fouls = models.IntegerField(blank=True, null=True)
    defensive_possessions = models.IntegerField(blank=True, null=True)
    defensive_rating = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    is_home = models.BooleanField(blank=True, null=True)
    num_overtimes = models.IntegerField(blank=True, null=True)
    offensive_possessions = models.IntegerField(blank=True, null=True)
    offensive_rating = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    pace = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'teamgameresults'
        unique_together = (('game_id', 'team'),)


class Teamtotals(models.Model):
    team = models.OneToOneField(Teams, models.DO_NOTHING, primary_key=True)
    season = models.CharField(max_length=1000, blank=True, null=True)
    points = models.IntegerField(blank=True, null=True)
    rebounds = models.IntegerField(blank=True, null=True)
    offensive_rebounds = models.IntegerField(blank=True, null=True)
    defensive_rebounds = models.IntegerField(blank=True, null=True)
    assists = models.IntegerField(blank=True, null=True)
    rim_assists = models.IntegerField(blank=True, null=True)
    turnovers = models.IntegerField(blank=True, null=True)
    live_turnovers = models.IntegerField(blank=True, null=True)
    free_throws_made = models.IntegerField(blank=True, null=True)
    free_throws_attempted = models.IntegerField(blank=True, null=True)
    field_goals_made = models.IntegerField(blank=True, null=True)
    field_goals_attempted = models.IntegerField(blank=True, null=True)
    threes_made = models.IntegerField(blank=True, null=True)
    threes_attempted = models.IntegerField(blank=True, null=True)
    rim_attempted = models.IntegerField(blank=True, null=True)
    rim_made = models.IntegerField(blank=True, null=True)
    possessions = models.IntegerField(blank=True, null=True)
    true_shooting_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    effective_field_goal_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)
    rebound_pct = models.DecimalField(max_digits=65535, decimal_places=65535, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'teamtotals'
