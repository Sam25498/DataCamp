--Create 3 CASE statements to COUNT the total number of home team wins, away team wins, and ties, which will allow you to examine the total number of records.
SELECT 
    c.name AS country,
    -- Count the home wins, away wins, and ties in each country
	COUNT(CASE WHEN m.home_goal > m.away_goal THEN m.id 
        END) AS home_wins,
	COUNT(CASE WHEN m.home_goal < m.away_goal THEN m.id 
        END) AS away_wins,
	COUNT(CASE WHEN m.home_goal = m.away_goal THEN m.id 
        END) AS ties
FROM country AS c
LEFT JOIN matches AS m
ON c.id = m.country_id
GROUP BY country;
------------------------------------------------------
--query result
country
matches
country	home_wins	away_wins	ties
Portugal	245	156	145
France	349	215	196
Scotland	204	158	94
Netherlands	282	173	157
Spain	350	233	177
Belgium	112	78	62
Italy	333	216	210

-----------------------------------------------------------
--Calculate the percentage of matches tied using a CASE statement inside AVG.
--Fill in the logical operators for each statement. Alias your columns as ties_2013_2014 and ties_2014_2015, respectively.

SELECT 
	c.name AS country,
    -- Calculate the percentage of tied games in each season
	AVG(CASE WHEN m.season='2013/2014' AND m.home_goal = m.away_goal THEN 1
			WHEN m.season='2013/2014' AND m.home_goal <> m.away_goal THEN 0
			END) AS ties_2013_2014,
	AVG(CASE WHEN m.season='2014/2015'AND m.home_goal = m.away_goal THEN 1
			WHEN m.season='2014/2015' AND m.home_goal <> m.away_goal THEN 0
			END) AS ties_2014_2015
FROM country AS c
LEFT JOIN matches AS m
ON c.id = m.country_id
GROUP BY country;
--------------------------------------------------------------
--query result
country
matches
country	ties_2013_2014	ties_2014_2015
Portugal	0.25000000000000000000	0.27777777777777777778
France	0.28421052631578947368	0.23157894736842105263
Scotland	0.21929824561403508772	0.19298245614035087719
Netherlands	0.27450980392156862745	0.23856209150326797386
Spain	0.22631578947368421053	0.23947368421052631579
Belgium	0.16666666666666666667	0.25000000000000000000
Italy	0.23684210526315789474	0.31662269129287598945
----------------------------------------------------------
--The previous "ties" columns returned values with 14 decimal points, which is not easy to interpret. Use the ROUND function to round to 2 decimal points.
SELECT 
	c.name AS country,
    -- Round the percentage of tied games to 2 decimal points
	ROUND(AVG(CASE WHEN m.season='2013/2014' AND m.home_goal = m.away_goal THEN 1
			 WHEN m.season='2013/2014' AND m.home_goal != m.away_goal THEN 0
			 END),2) AS pct_ties_2013_2014,
	ROUND(AVG(CASE WHEN m.season='2014/2015' AND m.home_goal = m.away_goal THEN 1
			 WHEN m.season='2014/2015' AND m.home_goal != m.away_goal THEN 0
			 END),2) AS pct_ties_2014_2015
FROM country AS c
LEFT JOIN matches AS m
ON c.id = m.country_id
GROUP BY country;
------------------------------------------------------------
--query result
country
matches
country	pct_ties_2013_2014	pct_ties_2014_2015
Portugal	0.25	0.28
France	0.28	0.23
Scotland	0.22	0.19
Netherlands	0.27	0.24
Spain	0.23	0.24
Belgium	0.17	0.25
Italy	0.24	0.32

