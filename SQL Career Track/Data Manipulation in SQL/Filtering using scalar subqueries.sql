--Calculate triple the average home + away goals scored across all matches. This will become your subquery in the next step. Note that this column does not have an alias, so it will be called ?column? in your results.
-- Select the average of home + away goals, multiplied by 3
SELECT 
	3 * AVG(home_goal + away_goal)
FROM matches_2013_2014;
---------------------------------------------------
--query result
?column?
8.3004617414248020
----------------------------------------------------
--Select the date, home goals, and away goals in the main query.
--Filter the main query for matches where the total goals scored exceed the value in the subquery.

SELECT 
	-- Select the date, home goals, and away goals scored
    date,
	home_goal,
	away_goal
FROM  matches_2013_2014
-- Filter for matches where total goals exceeds 3x the average
WHERE (home_goal + away_goal) >
       (SELECT 3 * AVG(home_goal + away_goal)
        FROM matches_2013_2014); 

--------------------------------------------------------------------
query result
matches_2013_2014
date	home_goal	away_goal
2013-12-14	6	3
2014-03-22	3	6
2013-10-30	7	3
