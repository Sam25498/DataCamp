/*Complete the same parts of the query as the previous exercise.
Complete the window function to rank each league from highest to lowest average goals scored.
Order the main query by the rank you just created.*/
SELECT 
	-- Select the league name and average goals scored
	l.name AS league,
    AVG(m.home_goal + m.away_goal) AS avg_goals,
    -- Rank leagues in descending order by average goals
    RANK() OVER(ORDER BY AVG(m.home_goal + m.away_goal) DESC) AS league_rank
FROM league AS l
LEFT JOIN match AS m 
ON l.id = m.country_id
WHERE m.season = '2011/2012'
GROUP BY l.name
-- Order the query by the rank you created
ORDER BY league_rank;
---------------------------------------------------------------
query result
match
league
league	avg_goals	league_rank
Netherlands Eredivisie	3.2581699346405229	1
Belgium Jupiler League	2.8791666666666667	2
Germany 1. Bundesliga	2.8594771241830065	3
England Premier League	2.8052631578947368	4
Spain LIGA BBVA	2.7631578947368421	5
Portugal Liga ZON Sagres	2.6416666666666667	6
Scotland Premier League	2.6359649122807018	7
