SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
ON c.code = e.code
-- Filter for the year 2010
    WHERE year = 2010;
