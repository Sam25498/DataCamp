-- Select fields with aliases
SELECT c.code AS country_code, c.name, e.year, e.inflation_rate 
FROM countries AS c
-- Join to economies (alias e)
INNER JOIN economies AS e
-- Match on code field using table aliases
ON c.code = e.code;

--query result
countries economies
cities

country_code	name	year	inflation_rate
AFG	Afghanistan	2010	2.179
AFG	Afghanistan	2015	-1.549
AGO	Angola	2010	14.48
AGO	Angola	2015	10.287
