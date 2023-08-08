--Create a CASE statement that identifies the id of matches played in the 2012/2013 season. Specify that you want ELSE values to be NULL.
--Wrap the CASE statement in a COUNT function and group the query by the country alias.
SELECT 
	c.name AS country,
    -- Count games from the 2012/2013 season
	COUNT(CASE WHEN m.season = '2012/2013' 
          	   THEN m.id ELSE NULL END) AS matches_2012_2013
FROM country AS c
LEFT JOIN match AS m
ON c.id = m.country_id
-- Group by country name alias
GROUP BY country;
----------------------------------------------------------
--
query result
match
country
country	matches_2012_2013
Portugal	240
France	380
Scotland	228
Netherlands	306
Spain	380
Belgium	240
Italy	380

---------------------------------------------------------
--Create 3 CASE WHEN statements counting the matches played in each country across the 3 seasons.
---END your CASE statement without an ELSE clause.
SELECT 
	c.name AS country,
    -- Count matches in each of the 3 seasons
	COUNT(CASE WHEN m.season = '2012/2013' THEN m.id END) AS matches_2012_2013,
	COUNT(CASE WHEN m.season = '2013/2014' THEN m.id END) AS matches_2013_2014,
	COUNT(CASE WHEN m.season = '2014/2015' THEN m.id END) AS matches_2014_2015
FROM country AS c
LEFT JOIN match AS m
ON c.id = m.country_id
-- Group by country name alias
GROUP BY country;
----------------------------------------------------------
--query result
match
country
country	matches_2012_2013	matches_2013_2014	matches_2014_2015
Portugal	240	240	306
France	380	380	380
Scotland	228	228	228
Netherlands	306	306	306
Spain	380	380	380
Belgium	240	12	240
