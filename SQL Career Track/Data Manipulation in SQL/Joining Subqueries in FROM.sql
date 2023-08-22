--Create the subquery to be used in the next step, which selects the country ID and match ID (id) from the match table.
--Filter the query for matches with greater than or equal to 10 goals.
SELECT 
	-- Select the country ID and match ID
	country_id, 
    id 
FROM match
-- Filter for matches with 10 or more goals in total
WHERE (home_goal + away_goal) >= 10;
------------------------------------------------------------
--query result
country
match
country_id	id
1729	3093
1729	3369
1729	3566
7809	9211
13274	14224
21518	23444
21518	24016
-------------------------------------------------------------
--Construct a subquery that selects only matches with 10 or more total goals.
--Inner join the subquery onto country in the main query.
--Select name from country and count the id column from match.
SELECT
	-- Select country name and the count match IDs
    c.name AS country_name,
    COUNT(sub.id) AS matches
FROM country AS c
-- Inner join the subquery onto country
-- Select the country id and match id columns
INNER JOIN (SELECT country_id, id 
            FROM match
            -- Filter the subquery by matches with 10+ goals
            WHERE (home_goal + away_goal) >= 10) AS sub
ON c.id = sub.country_id
GROUP BY country_name;
--------------------------------------------------------------------
query result
country
match
country_name	matches
Netherlands	1
Spain	4
Germany	1
England	3
-----------------------------------------------------------------
This solution works by first creating a subquery that selects matches with 10 or more total goals. This is done by adding the home_goal and away_goal columns in the match table and checking if the sum is greater than or equal to 10. The subquery selects the country_id and id columns from the match table where the total goals are 10 or more.
The main query then performs an INNER JOIN operation between the country table and the subquery. The INNER JOIN operation combines rows from different tables if the join condition is true. In this case, the join condition is that the id column in the country table must be equal to the country_id column in the subquery. This ensures that only 
the countries that have matches with 10 or more total goals are selected. Finally, the main query selects the name column from the country table and counts the number of match ids from the subquery. The COUNT function is an aggregate function that returns the number of items in a group. In this case, it counts the number of matches with 10 or more total goals for each country. The result is grouped by the country name, which means that the output will show the number of matches with 10 or more total goals for each country.
  ----
