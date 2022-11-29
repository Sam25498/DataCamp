SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
FULL JOIN currencies
USING (code)
-- Where region is North America or null
WHERE region = 'North America'
	OR name IS NULL
ORDER BY region; 

--query result
-- country	code	region	basic_unit
Bermuda	BMU	North America	Bermudian dollar
United States	USA	North America	United States dollar
Canada	CAN	North America	Canadian dollar
