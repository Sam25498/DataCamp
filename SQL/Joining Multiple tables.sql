-- Select relevant fields
SELECT name, year, fertility_rate
FROM populations AS p
-- Inner join countries and populations, aliased, on code
INNER JOIN countries AS c
ON p.country_code = c.code;

--query result
name	year	fertility_rate
Aruba	2010	1.704
Aruba	2015	1.647
Afghanistan	2010	5.746
Afghanistan	2015	4.653
Angola	2010	6.41
