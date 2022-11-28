SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
-- Order by descending avg_gdp
ORDER BY avg_gdp DESC
-- Return only first 10 records
LIMIT 10;

--query result
-- region	avg_gdp
Western Europe	58130.96149553572
Nordic Countries	57073.99765625
North America	47911.509765625
Australia and New Zealand	44792.384765625
British Islands	43588.330078125
Eastern Asia	24962.8076171875
Southern Europe	22926.410910866478
Middle East	18204.641515395222
Baltic Countries	12631.029947916666
Caribbean	11413.339454064002
