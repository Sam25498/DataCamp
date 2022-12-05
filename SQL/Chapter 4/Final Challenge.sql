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

---query result
cities
economies
countries
populations
currencies
languages

name	country_code	city_proper_pop	metroarea_pop	city_perc
Lima	PER	8852000	10750000	82.34418630599976
Bogota	COL	7878783	9800000	80.3957462310791
Moscow	RUS	12197596	16170000	75.43349266052246
Vienna	AUT	1863881	2600000	71.6877281665802
Montevideo	URY	1305082	1947604	67.00961589813232
Caracas	VEN	1943901	2923959	66.48181676864624
Rome	ITA	2877215	4353775	66.0855233669281
Brasilia	BRA	2556149	3919864	65.2101457118988
London	GBR	8673713	13879757	62.491822242736816
Budapest	HUN	1759407	2927944	60.09018421173096
Showing 10 out of 10 rows
