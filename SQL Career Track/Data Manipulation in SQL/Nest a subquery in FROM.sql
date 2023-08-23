/*Generate a list of matches where at least one team scored 5 or more goals.*/
-- Select matches where a team scored 5+ goals
SELECT
	country_id,
    season,
	id
FROM match
WHERE home_goal >=5 OR away_goal >=5;
---------------------------------------------------

query result
country
match
country_id	season	id
1	2011/2012	764
1	2011/2012	766
1	2011/2012	781
1	2011/2012	791
1	2011/2012	854

/*Turn the query from the previous step into a subquery in the FROM statement.
COUNT the match ids generated in the previous step, and group the query by country_id and season.*/
-- Count match ids
SELECT
    country_id,
    season,
    COUNT(id) AS matches
-- Set up and alias the subquery
FROM (
	SELECT
    	country_id,
    	season,
    	id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5)
    AS subquery
-- Group by country_id and season
GROUP BY country_id, season;
-----------------------------------------------------------------------------
query result
country
match
country_id	season	matches
19694	2012/2013	5
21518	2012/2013	23
13274	2011/2012	24
17642	2014/2015	12
13274	2013/2014	20
1	2011/2012	11
21518	2014/2015	21
/*Finally, declare the same query from step 2 as a subquery in FROM with the alias outer_s.
Left join it to the country table using the outer query's country_id column.
Calculate an AVG of high scoring matches per country in the main query.*/
SELECT
	c.name AS country,
    -- Calculate the average matches per season
	AVG(c.id) AS avg_seasonal_high_scores
FROM country AS c
-- Left join outer_s to country
LEFT JOIN (
  SELECT country_id, season,
         COUNT(id) AS matches
  FROM (
    SELECT country_id, season, id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5) AS inner_s
  -- Close parentheses and alias the subquery
  GROUP BY country_id, season) AS outer_s
ON c.id = outer_s.country_id
GROUP BY country;
---------------------------------------------------------------------
query result
country
match
country	avg_seasonal_high_scores
Portugal	17642.000000000000
France	4769.0000000000000000
Scotland	19694.000000000000
Netherlands	13274.000000000000
Spain	21518.000000000000
Belgium	1.00000000000000000000
Italy	10257.0000000000000000
Germany	7809.0000000000000000
England	1729.0000000000000000
Switzerland	24558.000000000000
Poland	15722.000000000000
