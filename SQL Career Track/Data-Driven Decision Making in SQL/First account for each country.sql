/*
Conduct an analysis to see when the first customer accounts were created for each country.

Instructions
100 XP
Create a table with a row for each country and columns for the country name and the date when the first customer account was created.
Use the alias first_account for the column with the dates.
Order by date in ascending order.*/
SELECT country, -- For each country report the earliest date when an account was created
	min(date_account_start) AS first_account
FROM customers
GROUP BY country
ORDER BY first_account ASC;
-------------------------------------------------------------
query result
customers
country	first_account
France	2017-01-13
Hungary	2017-01-18
Belgium	2017-01-28
Slovenia	2017-01-31
Spain	2017-02-14
Italy	2017-02-28
Poland	2017-03-03
