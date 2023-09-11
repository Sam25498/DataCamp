/*
Augment the table renting with all columns from the table customers with a LEFT JOIN.
Use as alias' for the tables r and c respectively.*/
SELECT * -- Join renting with customers
FROM renting
LEFT JOIN customers
ON renting.customer_id = customers.customer_id;
-------------------------------------------------------------
query result
renting
customers
renting_id	customer_id	movie_id	rating	date_renting	customer_id	name	country	gender	date_of_birth	date_account_start
1	41	8	null	2018-10-09	41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12
2	10	29	10	2017-03-01	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28
3	108	45	4	2018-06-08	108	Saúl Tafoya Meraz	Spain	male	1992-05-15	2017-03-13
4	39	66	8	2018-10-22	39	Amy Haynes	Great Britan	female	1975-07-28	2018-01-19
5	104	15	7	2019-03-18	104	Dimitri Zambrano Morales	Spain	male	1992-06-21	2017-04-12
----------------------------------------------------------------------
--Select only records from customers coming from Belgium.
SELECT *
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
WHERE c.country = 'Belgium'; -- Select only records from customers coming from Belgium
---------------------------------------------------------------------------
query result
renting
customers
renting_id	customer_id	movie_id	rating	date_renting	customer_id	name	country	gender	date_of_birth	date_account_start
2	10	29	10	2017-03-01	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28
14	8	29	null	2018-08-03	8	Jaëla van den Dolder	Belgium	female	1990-08-31	2018-02-08
27	7	36	null	2019-03-14	7	Annelous Sneep	Belgium	female	1993-11-14	2018-05-12
32	8	42	10	2019-02-13	8	Jaëla van den Dolder	Belgium	female	1990-08-31	2018-02-08
70	10	44	null	2017-12-17	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28
187	7	44	8	2018-06-23	7	Annelous Sneep	Belgium	female	1993-11-14	2018-05-12
-----------------------------------------------------------------------------------
--Average ratings of customers from Belgium.
SELECT avg(rating) -- Average ratings of customers from Belgium
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
WHERE c.country='Belgium';
------------------------------------------
avg
8.9000000000000000
