/*Create a subquery in SELECT that yields the average goals scored in the 2012/2013 season. Name the new column overall_avg.
Create a subquery in FROM that calculates the average goals scored in each stage during the 2012/2013 season.
Filter the main query for stages where the average goals exceeds the overall average in 2012/2013.*/
SELECT 
	-- Select the stage and average goals from s
	s.stage,
    ROUND(s.avg_goals,2) AS avg_goal,
    -- Select the overall average for 2012/2013
    (SELECT AVG(home_goal+ away_goal) FROM match WHERE season = '2012/2013') AS overall_avg
FROM 
	-- Select the stage and average goals in 2012/2013 from match
	(SELECT
		 stage,
         AVG(home_goal + away_goal) AS avg_goals
	 FROM match
	 WHERE season = '2012/2013'
	 GROUP BY stage) AS s
WHERE 
	-- Filter the main query using the subquery
	s.avg_goals > (SELECT AVG(home_goal + away_goal) 
                    FROM match WHERE season = '2012/2013');
----------------------------------------------------------------------------
query result
match
stage	avg_goal	overall_avg
4	2.80	2.7726993865030675
10	2.96	2.7726993865030675
38	3.17	2.7726993865030675
6	2.78	2.7726993865030675
12	3.23	2.7726993865030675
36	2.90	2.7726993865030675
31	3.06	2.7726993865030675
