-- Select all records of movie rentals from customer with ID 115
SELECT *
FROM renting
WHERE customer_id = 115;
--------------------------------------
query result
customers
renting
renting_id	customer_id	movie_id	rating	date_renting
245	115	69	null	2019-04-24
395	115	11	null	2019-04-07
498	115	42	null	2019-03-16
-----------------------------------------
--Select all records of movie rentals from the customer with ID 115 and exclude records with null ratings.

SELECT *
FROM renting
WHERE rating IS NOT NULL -- Exclude those with null ratings
AND customer_id = 115;
--------------------------------------------------
query result
customers
renting
renting_id	customer_id	movie_id	rating	date_renting
--------------------------------------------------
--Select all records of movie rentals from the customer with ID 1, excluding null ratings.
SELECT *
FROM renting
WHERE rating IS NOT NULL -- Exclude null ratings
AND customer_id = '1'; -- Select all ratings from customer with ID 1

--------------------------------------------------
--query result
customers
renting
renting_id	customer_id	movie_id	rating	date_renting
421	1	71	10	2019-01-21
520	1	39	6	2018-12-29
--------------------------------------------------
SELECT *
FROM customers AS c -- Select all customers with at least one rating
WHERE EXISTS
	(SELECT *
	FROM renting AS r
	WHERE rating IS NOT NULL 
	AND r.customer_id = c.customer_id);
--------------------------------------------------
query result
customers
renting
customer_id	name	country	gender	date_of_birth	date_account_start
2	Wolfgang Ackermann	Austria	male	1971-11-17	2018-10-15
4	Julia Jung	Austria	female	1991-01-04	2017-11-22
7	Annelous Sneep	Belgium	female	1993-11-14	2018-05-12
8	Jaëla van den Dolder	Belgium	female	1990-08-31	2018-02-08
10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28
11	Yakup Mes	Belgium	male	1978-04-28	2019-02-19
12	Kristine J. Lauritsen	Denmark	female	1994-01-14	2018-12-02
-------------------------------------------------
