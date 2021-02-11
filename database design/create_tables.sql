--ALTER TABLE players
--ALTER COLUMN team_id type int
--USING team_id::integer;


CREATE TABLE TeamGameResults (
	game_id int,
	team_id int,
	season varchar,
	game_date date,
	score int,
	rebounds int,
	offensive_rebounds int,
	defensive_rebounds int,
	assists int,
	rim_assists int,
	turnovers int,
	live_turnovers int,
	free_throws_made int,
	free_throws_attempted int,
	field_goals_made int,
	field_goals_attempted int,
	threes_made int,
	threes_attempted int,
	rim_attempted int,
	rim_made int,
	possessions int,
	true_shooting_pct numeric,
	effective_field_goal_pct numeric,
	rebound_pct numeric,	
	PRIMARY KEY(game_id,team_id)
);
 
CREATE TABLE PlayerGameResults (
	game_id int,
	player_id int,
	team_id int,
	game_date date,
	season varchar,
	score int,
	rebounds int,
	offensive_rebounds int,
	defensive_rebounds int,
	assists int,
	rim_assists int,
	turnovers int,
	live_turnovers int,
	free_throws_made int,
	free_throws_attempted int,
	field_goals_made int,
	field_goals_attempted int,
	threes_made int,
	threes_attempted int,
	rim_attempted int,
	rim_made int,
	possessions int,
	true_shooting_pct numeric,
	effective_field_goal_pct numeric,
	rebound_pct numeric,
	plus_minus int,
	PRIMARY KEY(game_id,player_id)
);

CREATE TABLE LeagueAverageTotals (
  season varchar,
  points int,
  rebounds int,
  offensive_rebounds int,
  defensive_rebounds int,
  assists int,
  rim_assists int,
  turnovers int,
  live_turnovers int,
  free_throws_made int,
  free_throws_attempted int,
  field_goals_made int,
  field_goals_attempted int,
  threes_made int,
  threes_attempted int,
  rim_attempted int,
  rim_made int,
  possessions int,
  true_shooting_pct numeric,
  effective_field_goal_pct numeric,
  rebound_pct numeric
);

CREATE TABLE Standings (
  team_id int PRIMARY KEY,
  wins int,
  losses int,
  seed int,
  season varchar
);

CREATE TABLE TeamTotals (
  team_id int PRIMARY KEY,
  season varchar,
  points int,
  rebounds int,
  offensive_rebounds int,
  defensive_rebounds int,
  assists int,
  rim_assists int,
  turnovers int,
  live_turnovers int,
  free_throws_made int,
  free_throws_attempted int,
  field_goals_made int,
  field_goals_attempted int,
  threes_made int,
  threes_attempted int,
  rim_attempted int,
  rim_made int,
  possessions int,
  true_shooting_pct numeric,
  effective_field_goal_pct numeric,
  rebound_pct numeric
);
CREATE TABLE PlayerTotals (
  player_id int PRIMARY KEY,
  season varchar,
  team_id int,
  game_date date,
  score int,
  rebounds int,
  offensive_rebounds int,
  defensive_rebounds int,
  assists int,
  rim_assists int,
  turnovers int,
  live_turnovers int,
  free_throws_made int,
  free_throws_attempted int,
  field_goals_made int,
  field_goals_attempted int,
  threes_made int,
  threes_attempted int,
  rim_attempted int,
  rim_made int,
  possessions int,
  true_shooting_pct numeric,
  effective_field_goal_pct numeric,
  rebound_pct numeric
);
  