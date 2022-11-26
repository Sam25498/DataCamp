-- Select name fields (with alias) and region 
SELECT cities.name AS city , countries.name AS country , countries.region AS region
FROM cities 
INNER JOIN countries 
ON cities.country_code = countries.code;

--query result
countries cities

city	country	region
Abidjan	Cote d'Ivoire	Western Africa
Abu Dhabi	United Arab Emirates	Middle East
Abuja	Nigeria	Western Africa
Accra	Ghana	Western Africa
...,
