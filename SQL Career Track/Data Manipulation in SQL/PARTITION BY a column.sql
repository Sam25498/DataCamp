/*Complete the two window functions that calculate the home and away goal averages. Partition the window functions by season to calculate separate averages for each season.
Filter the query to only include matches played by Legia Warszawa, id = 8673*/
SELECT
	date,
	season,
	home_goal,
	away_goal,
	CASE WHEN hometeam_id = 8673 THEN 'home' 
		 ELSE 'away' END AS warsaw_location,
    -- Calculate the average goals scored partitioned by season
    AVG(home_goal) OVER(PARTITION BY season) AS season_homeavg,
    AVG(away_goal) OVER(PARTITION BY season) AS season_awayavg
FROM match
-- Filter the data set for Legia Warszawa matches only
WHERE 
	hometeam_id = 8673 
    OR awayteam_id = 8673
ORDER BY (home_goal + away_goal) DESC;
--------------------------------------------------------------------------------
query result
team
match
date	season	home_goal	away_goal	warsaw_location	season_homeavg	season_awayavg
2013-09-14	2013/2014	3	5	away	1.7666666666666667	1.2333333333333333
2014-09-13	2014/2015	4	3	home	1.5666666666666667	1.3333333333333333
2013-07-20	2013/2014	5	1	home	1.7666666666666667	1.2333333333333333
2013-10-20	2013/2014	4	1	home	1.7666666666666667	1.2333333333333333
2013-06-02	2012/2013	5	0	home	1.5666666666666667	1.1333333333333333
2013-02-23	2012/2013	3	2	away	1.5666666666666667	1.1333333333333333
2014-08-09	2014/2015	5	0	home	1.5666666666666667	1.3333333333333333
