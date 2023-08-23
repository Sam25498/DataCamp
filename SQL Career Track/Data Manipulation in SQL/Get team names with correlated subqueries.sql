/*Using a correlated subquery in the SELECT statement, match the team_api_id column from team to the hometeam_id from match.*/
SELECT
    m.date,
   (SELECT team_long_name
    FROM team AS t
    -- Connect the team to the match table
    WHERE t.team_api_id = m.hometeam_id) AS hometeam
FROM match AS m;
------------------------------------------------------
query result
team
match
date	hometeam
2011-07-29	Oud-Heverlee Leuven
2011-07-30	RAEC Mons
2011-07-30	KRC Genk
2011-07-30	KAA Gent
2011-07-30	Sporting Lokeren
2011-07-30	KV Kortrijk
2011-07-30	KV Mechelen
/*Create a second correlated subquery in SELECT, yielding the away team's name.
Select the home and away goal columns from match in the main query.*/
SELECT
    m.date,
    (SELECT team_long_name
     FROM team AS t
     WHERE t.team_api_id = m.hometeam_id) AS hometeam,
    -- Connect the team to the match table
    (SELECT team_long_name
     FROM team AS t
     WHERE t.team_api_id = m.awayteam_id) AS awayteam,
    -- Select home and away goals
     home_goal,
     away_goal
FROM match AS m;
------------------------------------------------------------------
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
