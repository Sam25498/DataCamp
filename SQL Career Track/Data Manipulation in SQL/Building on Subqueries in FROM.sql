--Complete the subquery inside the FROM clause. Select the country name from the country table, along with the date, the home goal, the away goal, and the total goals columns from the match table.
--Create a column in the subquery that adds home and away goals, called total_goals. This will be used to filter the main query.
--Select the country, date, home goals, and away goals in the main query.
--Filter the main query for games with 10 or more total goals.
SELECT
	-- Select country, date, home, and away goals from the subquery
    country, 
    date, 
    home_goal,
    away_goal
FROM 
	-- Select country name, date, home_goal, away_goal, and total goals in the subquery
	(SELECT name AS country, 
     	    m.date, 
     		m.home_goal, 
     		m.away_goal,
           (m.home_goal + m.away_goal) AS total_goals
    FROM match AS m
    LEFT JOIN country AS c
    ON m.country_id = c.id) AS subq
-- Filter by total goals scored in the main query
WHERE total_goals >= 10;
---------------------------------------------------------------
query result
country
match
country	date	home_goal	away_goal
England	2011-08-28	8	2
England	2012-12-29	7	3
England	2013-05-19	5	5
Germany	2013-03-30	9	2
Netherlands	2011-11-06	6	4
Spain	2013-10-30	7	3
Spain	2015-04-05	9	1
