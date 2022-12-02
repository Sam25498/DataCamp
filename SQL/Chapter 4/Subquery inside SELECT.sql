-- In Step 1, you'll begin with a LEFT JOIN combined with a GROUP BY to obtain summarized information from two tables in order to select the nine countries with the 
-- most cities appearing in the cities table. In Step 2, you'll write a query that returns the same result as the join, but leveraging a nested query instead.

--Write a LEFT JOIN on the countries and cities tables to select names of countries in cities (aliasing country name as country), followed by counts of cities as cities_num.
--Sort by cities_num (descending) and limit to the first nine records.

--WRONG CODE
-- Find top nine countries with the most cities
SELECT name, 
    (SELECT COUNT(cities) AS cities_num
    FROM countries)
FROM cities
LEFT JOIN countries

-- Order by count of cities as cities_num
ORDER BY cities_num DESC;

-- Right code

-- Find top nine countries with the most cities
SELECT countries.name AS country, COUNT(*) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY country
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, country
LIMIT 9;
