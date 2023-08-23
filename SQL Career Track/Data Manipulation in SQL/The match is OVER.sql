/*Select the match ID, country name, season, home, and away goals from the match and country tables.
Complete the query that calculates the average number of goals scored overall and then includes the aggregate value in each row using a window function.*/
SELECT 
	-- Select the id, country name, season, home, and away goals
	m.id, 
    c.name AS country, 
    m.season,
	m.home_goal,
	m.away_goal,
    -- Use a window to include the aggregate average in each row
	AVG(m.home_goal + m.away_goal) OVER() AS overall_avg
FROM match AS m
LEFT JOIN country AS c ON m.country_id = c.id;
--------------------------------------------------------------------------
query result
country
match
id	country	season	home_goal	away_goal	overall_avg
757	Belgium	2011/2012	2	1	2.7321025161642128
758	Belgium	2011/2012	1	1	2.7321025161642128
759	Belgium	2011/2012	3	1	2.7321025161642128
760	Belgium	2011/2012	0	1	2.7321025161642128
761	Belgium	2011/2012	0	0	2.7321025161642128
762	Belgium	2011/2012	1	1	2.7321025161642128
763	Belgium	2011/2012	2	1	2.7321025161642128
