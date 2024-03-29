--Perform a full join with countries (left) and currencies (right).
--Filter for the North America region or NULL country names.
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
Greenland	GRL	North America	null
null	TMP	null	United States dollar
null	FLK	null	Falkland Islands pound
null	HKG	null	Hong Kong dollar
...
null	TWN	null	New Taiwan dollar
null	WLF	null	CFP franc
null	MSR	null	East Caribbean dollar
null	IOT	null	United States dollar
null	CCK	null	Australian dollar
null	COK	null	New Zealand dollar
Showing 18 out of 18 rows

--Repeat the same query as before, turning your full join into a left join with the currencies table.
--Have a look at what has changed in the output by comparing it to the full join result.

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
LEFT JOIN currencies
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;

--query result
--country	code	region	basic_unit
Bermuda	BMU	North America	Bermudian dollar
Canada	CAN	North America	Canadian dollar
United States	USA	North America	United States dollar
Greenland	GRL	North America	null
Showing 4 out of 4 rows

--Repeat the same query again, this time performing an inner join of countries with currencies.
--Have a look at what has changed in the output by comparing it to the full join and left join results!

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
INNER JOIN currencies
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;

--query result
--country	code	region	basic_unit
Bermuda	BMU	North America	Bermudian dollar
Canada	CAN	North America	Canadian dollar
United States	USA	North America	United States dollar
Showing 3 out of 3 rows
