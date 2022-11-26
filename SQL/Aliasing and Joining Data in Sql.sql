-- Select name fields (with alias) and region 
SELECT cities.name AS city , countries.name AS country , countries.region AS region
FROM cities 
INNER JOIN countries 
ON cities.country_code = countries.code;
