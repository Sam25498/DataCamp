/*Construct two window functions partitioning the average of home and away goals by season and month.
Filter the dataset by Legia Warszawa's team ID (8673) so that the window calculation only includes matches involving them.*/
SELECT 
	date,
	season,
	home_goal,
	away_goal,
	CASE WHEN hometeam_id = 8673 THEN 'home' 
         ELSE 'away' END AS warsaw_location,
	-- Calculate average goals partitioned by season and month
    AVG(home_goal) OVER(PARTITION BY season,
         	EXTRACT(MONTH FROM date)) AS season_mo_home,
    AVG(away_goal) OVER(PARTITION BY season, 
            EXTRACT(MONTH FROM date)) AS season_mo_away
FROM match
WHERE 
	hometeam_id = 8673
    OR awayteam_id = 8673
ORDER BY (home_goal + away_goal) DESC;
----------------------------------------------------------
query result
team
match
date	season	home_goal	away_goal	warsaw_location	season_mo_home	season_mo_away
2013-09-14	2013/2014	3	5	away	2.2500000000000000	2.5000000000000000
2014-09-13	2014/2015	4	3	home	2.0000000000000000	2.6666666666666667
2013-07-20	2013/2014	5	1	home	2.5000000000000000	2.0000000000000000
2014-08-09	2014/2015	5	0	home	2.0000000000000000	1.00000000000000000000
2012-10-28	2012/2013	3	2	home	1.6666666666666667	2.0000000000000000
2013-06-02	2012/2013	5	0	home	5.0000000000000000	0E-20
2013-12-15	2013/2014	4	1	home	2.2500000000000000	0.25000000000000000000
