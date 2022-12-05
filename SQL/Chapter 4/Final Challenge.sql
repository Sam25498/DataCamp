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
