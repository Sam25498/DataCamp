/*Select id from match and team_long_name from team. Join these two tables together on hometeam_id in match and team_api_id in team.*/
SELECT 
	-- Select match id and team long name
    m.id, 
   t.team_long_name AS hometeam
FROM match AS m
-- Join team to match using team_api_id and hometeam_id
LEFT JOIN team AS t 
ON t.team_api_id = m.hometeam_id;
----------------------------------------------------
query result
team
match
id	hometeam
757	Oud-Heverlee Leuven
758	RAEC Mons
759	KRC Genk
760	KAA Gent
761	Sporting Lokeren
762	KV Kortrijk
763	KV Mechelen

/*Declare the query from the previous step as a common table expression. SELECT everything from the CTE into the main query. Your results will not change at this step!*/
-- Declare the home CTE
WITH home AS (
	SELECT m.id, t.team_long_name AS hometeam
	FROM match AS m
	LEFT JOIN team AS t 
	ON m.hometeam_id = t.team_api_id)
-- Select everything from home
SELECT *
FROM home;
-----------------------------------------------------------
query result
team
match
id	hometeam
757	Oud-Heverlee Leuven
758	RAEC Mons
759	KRC Genk
760	KAA Gent
761	Sporting Lokeren
762	KV Kortrijk
763	KV Mechelen
/*Let's declare the second CTE, away. Join it to the first CTE on the id column.
The date, home_goal, and away_goal columns have been added to the CTEs. SELECT them into the main query.*/
WITH home AS (
  SELECT m.id, m.date, 
  		 t.team_long_name AS hometeam, m.home_goal
  FROM match AS m
  LEFT JOIN team AS t 
  ON m.hometeam_id = t.team_api_id),
-- Declare and set up the away CTE
away AS (
  SELECT m.id, m.date, 
  		 t.team_long_name AS awayteam, m.away_goal
  FROM match AS m
  LEFT JOIN team AS t 
  ON m.awayteam_id = t.team_api_id)
-- Select date, home_goal, and away_goal
SELECT 
	home.date,
    home.hometeam,
    away.awayteam,
    home.home_goal,
    away.away_goal
-- Join away and home on the id column
FROM home
INNER JOIN away
ON home.id = away.id;
--------------------------------------------------------------------
query result
team
match
date	hometeam	awayteam	home_goal	away_goal
2011-07-29	Oud-Heverlee Leuven	RSC Anderlecht	2	1
2011-07-30	RAEC Mons	Standard de Liège	1	1
2011-07-30	KRC Genk	Beerschot AC	3	1
2011-07-30	KAA Gent	KSV Cercle Brugge	0	1
2011-07-30	Sporting Lokeren	SV Zulte-Waregem	0	0
2011-07-30	KV Kortrijk	Lierse SK	1	1
2011-07-30	KV Mechelen	Sint-Truidense VV	2	1
