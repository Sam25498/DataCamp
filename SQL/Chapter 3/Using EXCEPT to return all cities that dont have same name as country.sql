-- Return all cities that do not have the same name as a country
SELECT name
FROM cities
EXCEPT
SELECT name
FROM countries
ORDER BY name;

-- query result
cities
countries

name
Abidjan
Abu Dhabi
Abuja
Accra
Addis Ababa
Ahmedabad
...
Izmir
Jaipur
Jakarta
Jeddah
Jinan
Showing 100 out of 235 rows
