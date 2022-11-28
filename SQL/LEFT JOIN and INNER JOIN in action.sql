--Perform an inner join with cities AS c1 on the left and countries as c2 on the right.
--Use code as the field to merge your tables on.
SELECT 
    c1.name AS city,
    code,
    c2.name AS country,
    region,
    city_proper_pop
FROM cities AS c1
-- Perform an inner join with cities as c1 and countries as c2 on country code
INNER JOIN countries as c2
ON c1.country_code = c2.code
ORDER BY code DESC;

--query result
--city	code	country	region	city_proper_pop
Harare	ZWE	Zimbabwe	Eastern Africa	1606000
Lusaka	ZMB	Zambia	Eastern Africa	1742979
Cape Town	ZAF	South Africa	Southern Africa	3740026
Johannesburg	ZAF	South Africa	Southern Africa	4434827
Durban	ZAF	South Africa	Southern Africa	3442361

--Change the code to perform a LEFT JOIN instead of an INNER JOIN.
--After executing this query, have a look at how many records the query result contains.
SELECT 
	c1.name AS city, 
    code, 
    c2.name AS country,
    region, 
    city_proper_pop
FROM cities AS c1
-- Join right table (with alias)
LEFT JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code DESC;
