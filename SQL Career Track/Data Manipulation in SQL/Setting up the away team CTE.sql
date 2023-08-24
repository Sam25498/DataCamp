/*Complete the CASE statement syntax.
Fill out the logical operators identifying each match as a win, loss, or tie for Manchester United.
Join the table on awayteam_id, and team_api_id.*/
SELECT 
	m.id, 
    t.team_long_name,
    -- Identify matches as home/away wins or ties
	CASE WHEN m.home_goal > m.away_goal THEN 'MU Loss'
		WHEN m.home_goal < m.away_goal THEN 'MU Win'
        ELSE 'Tie' END AS outcome
-- Join team table to the match table
FROM match AS m
LEFT JOIN team AS t 
ON m.awayteam_id = t.team_api_id
WHERE 
	-- Filter for 2014/2015 and Manchester United as the away team
	season = '2014/2015'
	AND t.team_long_name = 'Manchester United';
---------------------------------------------------------------
query result
team
match
id	team_long_name	outcome
4026	Manchester United	MU Loss
4039	Manchester United	MU Win
4075	Manchester United	MU Win
4089	Manchester United	Tie
4117	Manchester United	Tie
4126	Manchester United	Tie
4136	Manchester United	Tie
