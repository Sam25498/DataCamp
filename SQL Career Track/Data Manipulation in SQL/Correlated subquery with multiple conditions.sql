/*Select the country_id, date, home_goal, and away_goal columns in the main query.
Complete the subquery: Select the matches with the highest number of total goals.
Match the subquery to the main query using country_id and season.
Fill in the correct logical operator so that total goals equals the max goals recorded in the subquery.*/
SELECT 
	-- Select country ID, date, home, and away goals from match
	main.country_id,
    main.date,
    main.home_goal,
    main.away_goal
FROM match AS main
WHERE 
	-- Filter for matches with the highest number of goals scored
	(home_goal + away_goal) = 
        (SELECT MAX(sub.home_goal + sub.away_goal)
         FROM match AS sub
         WHERE main.country_id = sub.country_id
               AND main.season = sub.season);
---------------------------------------------------------------------------
query result
match
country_id	date	home_goal	away_goal
1	2011-10-29	4	5
1	2012-11-17	2	6
1	2012-12-09	1	7
1	2013-01-19	2	6
1	2012-08-19	2	6
1	2014-04-19	2	4
1	2014-04-26	4	2
