/*Complete the window function by:
Assessing the running total of home goals scored by FC Utrecht.
Assessing the running average of home goals scored.
Ordering both the running average and running total by date.*/
SELECT 
	date,
	home_goal,
	away_goal,
    -- Create a running total and running average of home goals
    SUM(home_goal) OVER(ORDER BY home_goal 
         ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS running_total,
    AVG(home_goal) OVER(ORDER BY home_goal
         ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS running_avg
FROM match
WHERE 
	hometeam_id = 9908 
	AND season = '2011/2012';
////////////////////////////////////////////////////////////
///////////////// CORRECTED ///////////////////////////////
//////////////////////////////////////////////////////////
SELECT 
	date,
	home_goal,
	away_goal,
    -- Create a running total and running average of home goals
    SUM(home_goal) OVER(ORDER BY date 
         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total,
    AVG(home_goal) OVER(ORDER BY date
         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_avg
FROM match
WHERE 
	hometeam_id = 9908 
	AND season = '2011/2012';
-------------------------------------------------------------------
query result
team
match
date	home_goal	away_goal	running_total	running_avg
2011-08-14	2	2	2	2.0000000000000000
2011-08-27	3	1	5	2.5000000000000000
2011-09-18	2	2	7	2.3333333333333333
2011-10-01	3	0	10	2.5000000000000000
2011-10-22	1	4	11	2.2000000000000000
2011-11-06	6	4	17	2.8333333333333333
2011-12-04	2	6	19	2.7142857142857143
