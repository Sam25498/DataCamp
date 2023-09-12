--First, count number of movie rentals for customer with customer_id=45. Give the table renting the alias r.
-- Count movie rentals of customer 45
SELECT count(*)
FROM renting
WHERE customer_id = 45;
--------------------------------
count
5
--------------------------------
-- Select customers with less than 5 movie rentals
SELECT *
FROM customers as c
WHERE 5 > 
	(SELECT count(*)
	FROM renting as r
	WHERE r.customer_id = c.customer_id);
---------------------------------------
query result
customers
renting
customer_id	name	country	gender	date_of_birth	date_account_start
2	Wolfgang Ackermann	Austria	male	1971-11-17	2018-10-15
3	Daniela Herzog	Austria	female	1974-08-07	2019-02-14
4	Julia Jung	Austria	female	1991-01-04	2017-11-22
5	Juliane Kirsch	Austria	female	1977-03-01	2018-12-16
6	Rowanne Couperus	Belgium	female	1994-04-05	2018-08-26
9	Antal van Looij	Belgium	male	1982-06-18	2019-03-10
11	Yakup Mes	Belgium	male	1978-04-28	2019-02-19
