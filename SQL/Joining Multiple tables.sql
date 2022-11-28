-- Perform an inner join of countries AS c (left) with populations AS p (right), on code.
--Select name, year and fertility_rate.

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

--Chain another inner join to your query with the economies table AS e, using code.
-- Select name, and using table aliases, select year and unemployment_rate from economies.

-- Select fields
SELECT name, fertility_rate, e.year, e.unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e
-- Match on country code
ON c.code = e.code;

--query result
name	fertility_rate	year	unemployment_rate
United Arab Emirates	1.868	2015	null
United Arab Emirates	1.868	2010	null
United Arab Emirates	1.767	2015	null
United Arab Emirates	1.767	2010	null
Argentina	2.37	2015	null
Argentina	2.37	2010	7.75
Argentina	2.308	2015	null
Argentina	2.308	2010	7.75
Armenia	1.648	2015	18.5
Armenia	1.648	2010	19
Armenia	1.517	2015	18.5
Armenia	1.517	2010	19
