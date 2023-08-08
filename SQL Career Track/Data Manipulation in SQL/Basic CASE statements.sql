--Select the team's long name and API id from the teams_germany table.
--Filter the query for FC Schalke 04 and FC Bayern Munich using IN, giving you the team_api_IDs needed for the next step.

SELECT
	-- Select the team long name and team API id
	team_long_name,
	team_api_id
FROM teams_germany
-- Only include FC Schalke 04 and FC Bayern Munich
WHERE team_long_name IN ('FC Schalke 04', 'FC Bayern Munich');
------------------------------------------------------

query result
teams_germany
matches_germany
team_long_name	team_api_id
FC Bayern Munich	9823
FC Schalke 04	10189

--------------------------------------------------------
--Create a CASE statement that identifies whether a match in Germany included FC Bayern Munich, FC Schalke 04, or neither as the home team.
--Group the query by the CASE statement alias, home_team.

-- Identify the home team as Bayern Munich, Schalke 04, or neither
SELECT 
	CASE WHEN hometeam_id = 10189 THEN 'FC Schalke 04'
        WHEN hometeam_id = 9823 THEN 'FC Bayern Munich'
         ELSE 'Other' END AS home_team,
	COUNT(id) AS total_matches
FROM matches_germany
-- Group by the CASE statement alias
GROUP BY home_team;

--------------------------------------------------
query result
teams_germany
matches_germany
home_team	total_matches
FC Bayern Munich	68
Other	1088
FC Schalke 04	68
