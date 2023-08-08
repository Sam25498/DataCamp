--Create 3 CASE statements to "count" matches in the '2012/2013', '2013/2014', and '2014/2015' seasons, respectively.
--Have each CASE statement return a 1 for every match you want to include, and a 0 for every match to exclude.
--Wrap the CASE statement in a SUM to return the total matches played in each season.
--Group the query by the country name alias.
SELECT 
	c.name AS country,
    -- Sum the total records in each season where the home team won
	SUM(CASE WHEN m.season = '2012/2013' AND m.home_goal > m.away_goal 
        THEN 1 ELSE 0 END) AS matches_2012_2013,
 	SUM(CASE WHEN m.season = '2013/2014' AND m.home_goal > m.away_goal 
        THEN 1 ELSE 0 END) AS matches_2013_2014,
	SUM(CASE WHEN m.season = '2014/2015' AND m.home_goal > m.away_goal
        THEN 1 ELSE 0 END) AS matches_2014_2015
FROM country AS c
LEFT JOIN match AS m
ON c.id = m.country_id
-- Group by country name alias
GROUP BY country;
------------------------------------------------------------
--query result
match
country
country	matches_2012_2013	matches_2013_2014	matches_2014_2015
Portugal	103	108	137
France	170	168	181
Scotland	89	102	102
Netherlands	137	144	138
Spain	189	179	171
Belgium	102	6	106
Italy	177	181	152
