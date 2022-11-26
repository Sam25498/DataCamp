-- Select fields with aliases
SELECT c.code AS country_code, c.name, e.year, e.inflation_rate 
FROM countries AS c
-- Join to economies (alias e)
INNER JOIN economies AS e
-- Match on code field using table aliases
ON c.code = e.code;
