-- Select relevant fields
SELECT name, year, fertility_rate
FROM populations AS p
-- Inner join countries and populations, aliased, on code
INNER JOIN countries AS c
ON p.country_code = c.code;
