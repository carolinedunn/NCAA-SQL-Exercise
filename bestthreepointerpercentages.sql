#standardSQL
#best three point percentages in NCAA games between 2013-2018
SELECT
  scheduled_date AS game_date,
  ABS(points_game - opp_points_game) AS point_difference,
  name,
  market,
  three_points_att,
  three_points_made,
  three_points_pct,
  points_game AS team_points,
  win,
  opp_name,
  opp_market,
  opp_three_points_att,
  opp_three_points_made,
  opp_three_points_pct,
  opp_points_game AS opposing_team_points,
  (three_points_made + opp_three_points_made) AS total_threes
FROM `bigquery-public-data.ncaa_basketball.mbb_teams_games_sr`
WHERE three_points_att > 5
ORDER BY three_points_pct DESC
LIMIT 500;
