-- Select all columns from cities
SELECT * 
FROM cities;

--query result
name	country_code	city_proper_pop	metroarea_pop	urbanarea_pop
Abidjan	CIV	4765000	null	4765000
Abu Dhabi	ARE	1145000	null	1145000
...,

SELECT * 
FROM cities
-- Inner join to countries
INNER JOIN cities
-- Match on country codes
ON countries.code = cities.country_code;
