/*Create a query that left joins team to match in order to get the identity of the home team. This becomes the subquery in the next step.*/
SELECT 
	m.id, 
    t.team_long_name AS hometeam
-- Left join team to match
FROM match AS m
LEFT JOIN team as t
ON m.hometeam_id = team_api_id;
-------------------------------------------------
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

/*Add a second subquery to the FROM statement to get the away team name, changing only the hometeam_id. Left join both subqueries to the match table on the id column.
Warning: if your code is timing out, you have probably made a mistake in the JOIN and tried to join on the wrong fields which caused the table to be too big! Read the provided code and comments carefully, and check your ON conditions!*/
SELECT
	m.date,
    -- Get the home and away team names
    hometeam,
    awayteam,
    m.home_goal,
    m.away_goal
FROM match AS m

-- Join the home subquery to the match table
LEFT JOIN (
  SELECT match.id, team.team_long_name AS hometeam
  FROM match
  LEFT JOIN team
  ON match.hometeam_id = team.team_api_id) AS home
ON home.id = m.id

-- Join the away subquery to the match table
LEFT JOIN (
  SELECT match.id, team.team_long_name AS awayteam
  FROM match
  LEFT JOIN team
  -- Get the away team ID in the subquery
  ON match.awayteam_id = team.team_api_id) AS away
ON away.id = m.id;
-----------------------------------------------------------------------------
query result
team
match
date	hometeam	awayteam	home_goal	away_goal
2011-07-29	Oud-Heverlee Leuven	RSC Anderlecht	2	1
2011-07-30	RAEC Mons	Standard de Liège	1	1
2011-07-30	KRC Genk	Beerschot AC	3	1
2011-07-30	KAA Gent	KSV Cercle Brugge	0	1
2011-07-30	Sporting Lokeren	SV Zulte-Waregem	0	0
