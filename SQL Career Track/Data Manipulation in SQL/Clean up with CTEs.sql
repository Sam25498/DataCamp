/*Complete the syntax to declare your CTE.
Select the country_id and match id from the match table in your CTE.
Left join the CTE to the league table using country_id.*/
-- Set up your CTE
WITH match_list AS (
    SELECT 
  		country_id, 
  		id
    FROM match
    WHERE (home_goal + away_goal) >= 10)
-- Select league and count of matches from the CTE
SELECT
    l.name AS league,
    COUNT(match_list.id) AS matches
FROM league AS l
-- Join the CTE to the league table
LEFT JOIN match_list 
ON l.id = match_list.country_id
GROUP BY l.name;
---------------------------------------------------------------
query result
match
league
league	matches
Switzerland Super League	0
Poland Ekstraklasa	0
Netherlands Eredivisie	1
Scotland Premier League	0
France Ligue 1	0
Spain LIGA BBVA	4
Germany 1. Bundesliga	1
/*The solution starts by declaring a Common Table Expression (CTE) named match_list. This CTE selects the country_id and id from the match table where the sum of home_goal and away_goal is greater than or equal to 10. This CTE is essentially creating a temporary table that we can use later in our query.

Next, the main query is run. It selects the name column from the league table and counts the number of ids from the match_list CTE. This count represents the number of matches where the total goals were 10 or more. The name column is aliased as league and the count of ids is aliased as matches.

The league table is then left joined with the match_list CTE. The join is made on the condition that the id in the league table matches the country_id in the match_list CTE. This means that all records from the league table and any matching records from the match_list CTE will be included in the result.

Finally, the results are grouped by the name of the league. This means that for each unique league name, the number of matches where the total goals were 10 or more will be counted.*/
