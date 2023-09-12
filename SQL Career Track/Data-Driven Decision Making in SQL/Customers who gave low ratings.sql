-- Calculate the minimum rating of customer with ID 7
SELECT min(rating)
FROM renting
WHERE customer_id = 7;
------------------------------------------------
min
8
-----------------------------------------------
--Select all customers with a minimum rating smaller than 4. Use the first letter of the table as an alias.

SELECT *
FROM customers AS c
WHERE 4 > -- Select all customers with a minimum rating smaller than 4 
	(SELECT MIN(rating)
	FROM renting AS r
	WHERE r.customer_id = c.customer_id);
------------------------------------------------
query result
customers
renting
customer_id	name	country	gender	date_of_birth	date_account_start
28	Sidney Généreux	France	male	1980-12-01	2017-02-04
41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12
86	Albin Jaworski	Poland	male	1984-05-01	2017-12-15
120	Robin J. Himes	USA	male	1988-11-30	2018-08-06
