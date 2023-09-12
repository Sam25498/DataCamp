SELECT *
FROM customers
WHERE customer_id IN          -- Select all customers with more than 10 movie rentals
	(SELECT customer_id
	FROM renting
	GROUP BY customer_id
	HAVING count(movie_id)> 10);
--------------------------------------------------
query result
customers
renting
customer_id	name	country	gender	date_of_birth	date_account_start
21	Avelaine Corbeil	France	female	1986-03-17	2017-06-11
28	Sidney Généreux	France	male	1980-12-01	2017-02-04
49	Havasy Kristof	Hungary	male	1998-06-13	2017-01-18
92	Honorata Nowak	Poland	female	1986-05-02	2017-09-21
113	Lucy Centeno Barrios	Spain	female	1970-11-03	2017-06-13
114	Canela Gaona Lozano	Spain	female	1997-04-01	2017-02-14
