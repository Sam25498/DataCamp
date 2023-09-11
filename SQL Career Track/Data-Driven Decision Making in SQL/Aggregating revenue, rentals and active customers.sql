SELECT *
FROM renting AS r
LEFT JOIN movies AS m -- Choose the correct join statment
ON m.movie_id = r.movie_id;

-----------------------------------------------------
query result
movies
renting
renting_id	customer_id	movie_id	rating	date_renting	movie_id	title	genre	runtime	year_of_release	renting_price
1	41	8	null	2018-10-09	8	Waking Up in Reno	Comedy	91	2002	2.59
2	10	29	10	2017-03-01	29	Two for the Money	Drama	122	2005	2.79
3	108	45	4	2018-06-08	45	Burn After Reading	Drama	96	2008	2.39
4	39	66	8	2018-10-22	66	The Hunger Games	Drama	142	2012	1.59
5	104	15	7	2019-03-18	15	Somethings Gotta Give	Comedy	128	2003	1.69
6	50	71	7	2018-10-09	71	Rio 2	Animation	101	2014	1.79
-----------------------------------------------------------------------------
--Calculate the revenue coming from movie rentals, the number of movie rentals and the number of customers who rented a movie.
SELECT 
	sum(m.renting_price), -- Get the revenue from movie rentals
	count(*), -- Count the number of rentals
	count(DISTINCT customer_id)  -- Count the number of customers
FROM renting AS r
LEFT JOIN movies AS m
ON r.movie_id = m.movie_id;
--------------------------------------------------------------------------
query result
movies
renting
sum	count	count
1275.72	578	116
----------------------------------------------------------------------------
--Now, you can report these values for the year 2018. Calculate the revenue in 2018, the number of movie rentals and the number of active customers in 2018. An active customer is a customer who rented at least one movie in 2018.

SELECT 
	SUM(m.renting_price), 
	COUNT(*), 
	COUNT(DISTINCT r.customer_id)
FROM renting AS r
LEFT JOIN movies AS m
ON r.movie_id = m.movie_id
-- Only look at movie rentals in 2018
WHERE date_renting BETWEEN '2018-01-01' AND '2018-12-31' ;
----------------------------------------------------------------------------
sum	count	count
658.02	298	93

