--Complete the CASE statement to identify Barcelona's away team games (id = 8634) as wins, losses, or ties.
--Left join the teams_spain table team_api_id column on the matches_spain table hometeam_id column. This retrieves the identity of the home team opponent.
--Filter the query to only include matches where Barcelona was the away team.
-- Select matches where Barcelona was the away team
-- Select matches where Barcelona was the away team
SELECT  
	m.date,
	t.team_long_name AS opponent,
	CASE WHEN m.home_goal < m.away_goal THEN 'Barcelona win!'
        WHEN m.home_goal > m.away_goal THEN 'Barcelona loss :(' 
        ELSE 'Tie' END AS outcome
FROM matches_spain AS m
-- Join teams_spain to matches_spain
LEFT JOIN teams_spain AS t 
ON m.hometeam_id = t.team_api_id
WHERE m.awayteam_id = 8634;
--------------------------------------------------------------
query result
matches_spain
teams_spain
date	opponent	outcome
2012-01-22	Málaga CF	Barcelona win!
2011-10-25	Granada CF	Barcelona win!
2011-11-06	Athletic Club de Bilbao	Tie
2011-11-26	Getafe CF	Barcelona loss :(
2011-12-10	Real Madrid CF	Barcelona win!
2012-01-08	RCD Espanyol	Tie
2012-01-28	Villarreal CF	Tie
---------------------------------------------------------------------
