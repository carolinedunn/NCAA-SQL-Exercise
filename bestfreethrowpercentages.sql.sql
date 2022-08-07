#standardSQL
#best free throw percentages in NCAA games between 2013-2018
SELECT
  scheduled_date AS game_date,
  ABS(points_game - opp_points_game) AS point_difference,
  name,
  market,
  free_throws_att,
  free_throws_made,
  free_throws_pct,
  points_game AS team_points,
  win,
  opp_name,
  opp_market,
  opp_free_throws_pct,
  opp_points_game AS opposing_team_points,
  (three_points_made + opp_three_points_made) AS total_threes
FROM `bigquery-public-data.ncaa_basketball.mbb_teams_games_sr`
WHERE opp_free_throws_pct != 100 AND free_throws_att > 9
ORDER BY free_throws_pct DESC
LIMIT 500;
