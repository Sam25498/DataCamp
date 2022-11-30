-- Return all cities with the same name as a country
SELECT countries.name
FROM countries
INTERSECT
SELECT cities.name
FROM cities;
