SELECT 
	c.country, -- Select country, gender and rating
    c.gender,
    r.rating
FROM renting AS r
LEFT JOIN customers AS c -- Use the correct join
ON r.customer_id = c.customer_id;
----------------------------------------------------
query result
customers
renting
country	gender	rating
Great Britan	female	null
Belgium	male	10
Spain	male	4
Great Britan	female	8
Spain	male	7
Hungary	male	7
Hungary	male	null
Italy	female	10
---------------------------------------------------
--Use GROUP BY to calculate the average rating over country and gender. Order the table by country and gender.
SELECT 
	c.country, 
    c.gender,
	avg(r.rating) -- Calculate average rating
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
GROUP BY country, gender -- Order and group by country and gender
ORDER BY country, gender;
-----------------------------------------------------
--query result
customers
renting
country	gender	avg
Austria	female	7.0000000000000000
Austria	male	6.0000000000000000
Belgium	female	9.1250000000000000
Belgium	male	8.0000000000000000
Denmark	female	8.4444444444444444
Denmark	male	7.3333333333333333
France	female	8.0000000000000000
-------------------------------------------------------
--Report all information that is included in a pivot table for country and gender in one SQL table.

SELECT 
	c.country, 
    c.gender,
	AVG(r.rating)
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
GROUP BY GROUPING SETS((c.country,c.gender)); -- Group by country and gender with GROUPING SETS
----------------------------------------------------------
query result
customers
renting
country	gender	avg
Austria	male	6.0000000000000000
France	female	8.0000000000000000
Hungary	female	7.2857142857142857
null	null	8.0000000000000000
Spain	female	7.6129032258064516
Belgium	male	8.0000000000000000
USA	male	7.5000000000000000
-----------------------------------------------------
--Report all information that is included in a pivot table for country and gender in one SQL table.
SELECT 
	c.country, 
    c.gender,
	AVG(r.rating)
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
-- Report all info from a Pivot table for country and gender
GROUP BY GROUPING SETS ((country, gender), (country),(gender),());

-----------------------------------------------------------------
query result
customers
renting
country	gender	avg
null	null	7.9390243902439024
Austria	male	6.0000000000000000
France	female	8.0000000000000000
Hungary	female	7.2857142857142857
null	null	8.0000000000000000
Spain	female	7.6129032258064516
Belgium	male	8.0000000000000000
USA	male	7.5000000000000000
Denmark	female	8.4444444444444444
Austria	female	7.0000000000000000
Slovenia	male	8.0909090909090909
Belgium	female	9.1250000000000000
Slovenia	female	8.5454545454545455
Italy	female	8.3666666666666667
Denmark	male	7.3333333333333333
Great Britan	male	7.7142857142857143
France	male	7.6666666666666667
Poland	female	7.8666666666666667
Spain	male	7.6818181818181818

