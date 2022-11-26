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
INNER JOIN countries
-- Match on country codes
ON countries.code = cities.country_code;

--query result
name	country_code	city_proper_pop	metroarea_pop	urbanarea_pop	code	name	continent	region	surface_area	indep_year	local_name	gov_form	capital	cap_long	cap_lat
Abidjan	CIV	4765000	null	4765000	CIV	Cote dIvoire	Africa	Western Africa	322463	1960	Cote dIvoire	Republic	Yamoussoukro	-4.0305	5.332
Abu Dhabi	ARE	1145000	null	1145000	ARE	United Arab Emirates	Asia	Middle East	83600	1971	Al-Imarat al-´Arabiya al-Muttahida	Emirate Federation	Abu Dhabi	54.3705	24.4764
Abuja	NGA	1235880	6000000	1235880	NGA	Nigeria	Africa	Western Africa	923768	1960	Nigeria	Federal Republic	Abuja	7.48906	9.05804


-- Select name fields (with alias) and region 
SELECT cities.name , countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- query result
countries  cities

name	region
Abidjan	Western Africa
Abu Dhabi	Middle East
Abuja	Western Africa
Accra	Western Africa

-- Select name fields (with alias) and region 
SELECT city.name , country.region
FROM cities AS city
INNER JOIN countries AS country
ON city.country_code = country.code;


--query result
countries cities

name	region
Abidjan	Western Africa
Abu Dhabi	Middle East
