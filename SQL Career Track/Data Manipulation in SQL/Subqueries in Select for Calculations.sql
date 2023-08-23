SELECT
	-- Select the league name and average goals scored
	name AS league,
	ROUND(AVG(m.home_goal + m.away_goal),2) AS avg_goals,
    -- Subtract the overall average from the league average
	ROUND(AVG(m.home_goal + m.away_goal) -  
		(SELECT AVG(home_goal + away_goal)
		 FROM match 
         WHERE season = '2013/2014'),2) AS diff
FROM league AS l
LEFT JOIN match AS m
ON l.country_id = m.country_id
-- Only include 2013/2014 results
WHERE m.season = '2013/2014'
GROUP BY l.name;
---------------------------------------------------------------------
--query result
league
match
league	avg_goals	diff
Switzerland Super League	2.89	0.12
Poland Ekstraklasa	2.64	-0.13
Netherlands Eredivisie	3.20	0.43
Scotland Premier League	2.75	-0.02
France Ligue 1	2.46	-0.31
Spain LIGA BBVA	2.75	-0.02
