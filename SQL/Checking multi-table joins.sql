SELECT name, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
-- Add an additional joining condition such that you are also joining on year
	AND e.year = p.year;
	
--query result
Angola	2015	5.996	null
Albania	2010	1.663	14
Albania	2015	1.793	17.1
United Arab Emirates	2010	1.868	null
United Arab Emirates	2015	1.767	null
Argentina	2010	2.37	7.75
