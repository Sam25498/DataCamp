-- Count the total number of customers, the number of customers for each country, and the number of female and male customers for each country
SELECT country,
       gender,
	   COUNT(*)
FROM customers
GROUP BY ROLLUP (country, gender)
ORDER BY country, gender; -- Order the result by country and gender
-----------------------------------------------------------------------
query result
customers
country	gender	count
Austria	female	3
Austria	male	1
Austria	null	4
Belgium	female	3
Belgium	male	3
Belgium	null	6
Denmark	female	4
Denmark	male	3
Denmark	null	7
France	female	5
