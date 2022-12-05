--Your task is to determine the top 10 capital cities in Europe and the Americas by city_perc, a metric you'll calculate. city_perc is a percentage that calculates the "proper" population in a city as a percentage of the total population in the wider metro area, as follows:

--city_proper_pop / metroarea_pop * 100

-- Do not use table aliasing in this exercise.
-- 1st Attempt
-- Select fields from cities
SELECT name, country_code, city_proper_pop, metroarea_pop,city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
-- Use subquery to filter city name
WHERE capital IN
    (SELECT capital
    FROM countries
    WHERE region LIKE 'Europe'
    OR region LIKE '%America')
-- Add filter condition such that metroarea_pop does not have null values
AND WHERE metroarea_pop !=  NULL

-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;

-- 2nd Attempt
-- Select fields from cities
SELECT name, country_code, city_proper_pop, metroarea_pop,city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
-- Use subquery to filter city name
WHERE capital IN
    (SELECT capital
    FROM countries
    WHERE region LIKE 'Europe'
    OR region LIKE '%America')
-- Add filter condition such that metroarea_pop does not have null values
AND WHERE metroarea_pop IS NOT NULL

-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;

-- Attempt 3
-- Select fields from cities
SELECT name, country_code, city_proper_pop, metroarea_pop,city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
-- Use subquery to filter city name
WHERE capital IN
    (SELECT capital
    FROM countries
    WHERE continent LIKE 'Europe'
    OR continent LIKE '%America')
-- Add filter condition such that metroarea_pop does not have null values
AND metroarea_pop IS NOT NULL

-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;


-- Correct Answer 
-- Select fields from cities
SELECT 
	name, 
    country_code, 
    city_proper_pop, 
    metroarea_pop,
    city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
-- Use subquery to filter city name
WHERE name IN
  (SELECT capital
   FROM countries
   WHERE (continent = 'Europe'
   OR continent LIKE '%America'))
-- Add filter condition such that metroarea_pop does not have null values
	  AND metroarea_pop IS NOT NULL
-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;
