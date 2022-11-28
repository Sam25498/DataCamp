--Complete the LEFT JOIN with the countries table on the left and the economies table on the right on the code field.
--Filter the records from the year 2010.
SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
ON c.code = e.code
-- Filter for the year 2010
    WHERE year = 2010;

--query result

--name	region	gdp_percapita
Afghanistan	Southern and Central Asia	539.667
Angola	Central Africa	3599.27
Albania	Southern Europe	4098.13
...,
