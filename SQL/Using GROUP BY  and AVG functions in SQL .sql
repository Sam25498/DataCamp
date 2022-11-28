-- Select region, and average gdp_percapita as avg_gdp
SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
-- Group by region
GROUP BY region;

--query result
--region	avg_gdp
Southern Africa	5051.597973632813
Caribbean	11413.339454064002
Eastern Africa	1757.3481616973877
Southern Europe	22926.410910866478
