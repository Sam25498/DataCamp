/*Select the country_id, date, home_goal, and away_goal columns in the main query.
Complete the AVG value in the subquery.
Complete the subquery column references, so that country_id is matched in the main and subquery.*/

SELECT 
	-- Select country ID, date, home, and away goals from match
	main.country_id,
    main.date,
    main.home_goal, 
    main.home_goal,
    main.away_goal
FROM match AS main
WHERE 
	-- Filter the main query by the subquery
	(home_goal + away_goal) > 
        (SELECT AVG((sub.home_goal+ sub.away_goal) * 3)
         FROM match AS sub
         -- Join the main query to the subquery in WHERE
         WHERE main.country_id = sub.country_id);
-----------------------------------------------------------------------
query result
match
country_id	date	home_goal	home_goal	away_goal
1	2011-10-29	4	4	5
1729	2011-08-28	8	8	2
1729	2012-12-29	7	7	3
1729	2013-05-19	5	5	5
1729	2013-12-14	6	6	3
1729	2014-03-22	3	3	6
1729	2014-08-30	3	3	6
