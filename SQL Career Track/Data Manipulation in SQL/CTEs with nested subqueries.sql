/*Declare a CTE that calculates the total goals from matches in August of the 2013/2014 season.
Left join the CTE onto the league table using country_id from the match_list CTE.
Filter the list on the inner subquery to only select matches in August of the 2013/2014 season.*/
-- Set up your CTE
WITH match_list AS (
    SELECT 
  		country_id,
  	   (home_goal + away_goal) AS goals
    FROM match
  	-- Create a list of match IDs to filter data in the CTE
    WHERE id IN (
       SELECT id
       FROM match
       WHERE season = '2013/2014' AND EXTRACT(MONTH FROM date) = 08))
-- Select the league name and average of goals in the CTE
SELECT 
	l.name,
    AVG(match_list.goals)
FROM league AS l
-- Join the CTE onto the league table
LEFT JOIN match_list ON l.id = match_list.country_id
GROUP BY l.name;
-----------------------------------------------------------
query result
match
league
name	avg
Switzerland Super League	1.9375000000000000
Poland Ekstraklasa	2.3103448275862069
Netherlands Eredivisie	3.4146341463414634
Scotland Premier League	2.1379310344827586
France Ligue 1	2.0270270270270270
Spain LIGA BBVA	2.9200000000000000
Germany 1. Bundesliga	3.2352941176470588
Italy Serie A	2.7500000000000000
Portugal Liga ZON Sagres	3.0000000000000000
England Premier League	2.0000000000000000
Belgium Jupiler League	null
