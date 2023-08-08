--Select the date of the match and create a CASE statement to identify matches as home wins, home losses, or ties.
SELECT 
	-- Select the date of the match
	date,
	-- Identify home wins, losses, or ties
	CASE WHEN home_goal > away_goal THEN 'Home win!'
        WHEN home_goal < away_goal THEN 'Home loss :(' 
        ELSE 'Tie' END AS outcome
FROM matches_spain;

-----------------------------------------------------------------
--query result
teams_spain
matches_spain
date	outcome
2012-01-21	Home loss :(
2012-01-22	Home win!
2012-01-22	Home loss :(
2012-01-23	Home win!
2012-01-21	Tie
2012-01-22	Tie

 -----------------------------------------------------------------
--Left join the teams_spain table team_api_id column to the matches_spain table awayteam_id. This allows us to retrieve the away team's identity.
--Select team_long_name from teams_spain as opponent and complete the CASE statement from Step 1.
  SELECT 
	m.date,
	--Select the team long name column and call it 'opponent'
	t.team_long_name AS opponent, 
	-- Complete the CASE statement with an alias
	CASE WHEN m.home_goal > m.away_goal THEN 'Home win!'
        WHEN m.home_goal < m.away_goal THEN 'Home loss :('
        ELSE 'Tie' END AS outcome
FROM matches_spain AS m
-- Left join teams_spain onto matches_spain
LEFT JOIN teams_spain AS t
ON m.awayteam_id = t.team_api_id;

-------------------------------------------------------------------------
--query result
teams_spain
matches_spain
date	opponent	outcome
2011-10-15	Valencia CF	Tie
2011-09-24	Valencia CF	Home win!
2011-09-17	Valencia CF	Home loss :(
2012-05-12	Valencia CF	Home win!
2012-04-29	Valencia CF	Home win!
2012-04-15	Valencia CF	Home win!
2012-04-08	Valencia CF	Tie

  
------------------------------------------------------------------------
--Complete the same CASE statement as the previous steps.
--Filter for matches where the home team is FC Barcelona (id = 8634).
  SELECT 
	m.date,
	t.team_long_name AS opponent,
    -- Complete the CASE statement with an alias
	CASE WHEN m.home_goal > m.away_goal THEN 'Barcelona win!'
        WHEN m.home_goal < m.away_goal THEN 'Barcelona loss :(' 
        ELSE 'Tie' END AS outcome 
FROM matches_spain AS m
LEFT JOIN teams_spain AS t 
ON m.awayteam_id = t.team_api_id
-- Filter for Barcelona as the home team
WHERE m.hometeam_id = 8634; 
----------------------------------------------------------------------
--query result
teams_spain
matches_spain
date	opponent	outcome
2011-10-29	RCD Mallorca	Barcelona win!
2011-11-19	Real Zaragoza	Barcelona win!
2011-12-03	Levante UD	Barcelona win!
2011-11-29	Rayo Vallecano	Barcelona win!
2012-01-15	Real Betis Balompié	Barcelona win!
2011-08-29	Villarreal CF	Barcelona win!
2012-05-02	Málaga CF	Barcelona win!
2012-02-04	Real Sociedad	Barcelona win!
2012-02-19	Valencia CF	Barcelona win!
2012-03-03	Real Sporting de Gijón	Barcelona win!
2012-03-20	Granada CF	Barcelona win!
2012-03-31	Athletic Club de Bilbao	Barcelona win!
2012-04-10	Getafe CF	Barcelona win!
2012-04-21	Real Madrid CF	Barcelona loss :(

