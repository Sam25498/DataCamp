--Create a subquery in the WHERE clause that retrieves all unique hometeam_ID values from the match table.
--Select the team_long_name and team_short_name from the team table. Exclude all values from the subquery in the main query.

Select the team_long_name and team_short_name from the team table. Exclude all values from the subquery in the main query.
SELECT 
	-- Select the team long and short names
	team_long_name,
	team_short_name
FROM team 
-- Exclude all values from the subquery
WHERE team_api_id NOT IN
    (SELECT DISTINCT hometeam_ID  FROM match);

--------------------------------------------------------------
query result
team
match
team_long_name	team_short_name
FCV Dender EH	DEN
KSV Roeselare	ROS
Tubize	TUB
Royal Excel Mouscron	MOU
KAS Eupen	EUP
Middlesbrough	MID
