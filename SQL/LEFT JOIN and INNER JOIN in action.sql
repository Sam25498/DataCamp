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
