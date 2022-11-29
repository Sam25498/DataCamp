--Now that you're fully equipped to use joins, try a challenge problem to test your knowledge!
--You will determine the names of the five countries and their respective regions with the lowest life expectancy for the year 2010. Use your knowledge about joins, 
--filtering, sorting and limiting to create this list!
SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
INNER JOIN populations AS p
ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE year = 2010
-- Sort by life_exp
ORDER BY life_exp ASC
-- Limit to five records
LIMIT 5;
