-- Find top nine countries with the most cities
SELECT countries.name AS country, COUNT(*) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY country
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, country
LIMIT 9;

--query result
cities
countries

country	cities_num
China	36
India	18
Japan	11
Brazil	10
Pakistan	9
United States	9
Indonesia	7
