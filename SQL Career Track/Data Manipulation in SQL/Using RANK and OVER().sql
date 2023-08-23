/*Select the league name and average total goals scored from league and match.
Complete the window function so it calculates the rank of average goals scored across all leagues in the database.
Order the rank by the average total of home and away goals scored.*/
SELECT 
	-- Select the league name and average goals scored
	l.name AS league,
    AVG(m.home_goal + m.away_goal) AS avg_goals,
    -- Rank each league according to the average goals
    RANK() OVER(ORDER BY  AVG(m.home_goal + m.away_goal)) AS league_rank
FROM league AS l
LEFT JOIN match AS m 
ON l.id = m.country_id
WHERE m.season = '2011/2012'
GROUP BY l.name
-- Order the query by the rank you created
ORDER BY league_rank;
-------------------------------------------------
query result
match
league
league	avg_goals	league_rank
Poland Ekstraklasa	2.1958333333333333	1
France Ligue 1	2.5157894736842105	2
Italy Serie A	2.5837988826815642	3
Switzerland Super League	2.6234567901234568	4
Scotland Premier League	2.6359649122807018	5
Portugal Liga ZON Sagres	2.6416666666666667	6
Spain LIGA BBVA	2.7631578947368421	7
