/*Declare your CTE, where you create a list of all matches with the league name.
Select the league, date, home, and away goals from the CTE.
Filter the main query for matches with 10 or more goals.*/
-- Set up your CTE
WITH match_list AS (
  -- Select the league, date, home, and away goals
    SELECT 
  		l.name AS league, 
     	m.date, 
  		m.home_goal, 
  		m.away_goal,
       (m.home_goal + m.away_goal) AS total_goals
    FROM match AS m
    LEFT JOIN league as l ON m.country_id = l.id)
-- Select the league, date, home, and away goals from the CTE
SELECT league, date, home_goal, away_goal
FROM match_list
-- Filter by total goals
WHERE total_goals >= 10;
------------------------------------------------------------
query result
match
league
league	date	home_goal	away_goal
England Premier League	2011-08-28	8	2
England Premier League	2012-12-29	7	3
England Premier League	2013-05-19	5	5
Germany 1. Bundesliga	2013-03-30	9	2
Netherlands Eredivisie	2011-11-06	6	4
Spain LIGA BBVA	2013-10-30	7	3
Spain LIGA BBVA	2015-04-05	9	1
