/*
Groups of customers
Use the CUBE operator to extract the content of a pivot table from the database. Create a table with the total number of male and female customers from each country.

Instructions
100 XP
Create a table with the total number of customers, of all female and male customers, of the number of customers for each country and the number of men and women from each country.*
*/
SELECT gender, -- Extract information of a pivot table of gender and country for the number of customers
	   country,
	   count(customer_id)
FROM customers
GROUP BY CUBE (gender, country)
ORDER BY country;
--------------------------------------------
query result
customers
gender	country	count
female	Austria	3
male	Austria	1
null	Austria	4
female	Belgium	3
male	Belgium	3
null	Belgium	6
female	Denmark	4
