/*
KPIs per country
In chapter 1 you were asked to provide a report about the development of the company. This time you have to prepare a similar report with KPIs for each country separately. Your manager is interested in the total number of movie rentals, the average rating of all movies and the total revenue for each country since the beginning of 2019.

Instructions 1/2
50 XP
1
2
Augment the table renting with information about customers and movies.
Use as alias the first latter of the table name.
Select only records about rentals since beginning of 2019.*/
SELECT *
FROM renting AS r -- Augment the table renting with information about customers
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
LEFT JOIN movies AS m -- Augment the table renting with information about movies
ON r.movie_id = m.movie_id
WHERE date_renting >= '2019-01-01'; -- Select only records about rentals since the beginning of 2019
------------------------------------------------------------
query result
renting
movies
customers
renting_id	customer_id	movie_id	rating	date_renting	customer_id	name	country	gender	date_of_birth	date_account_start	movie_id	title	genre	runtime	year_of_release	renting_price
5	104	15	7	2019-03-18	104	Dimitri Zambrano Morales	Spain	male	1992-06-21	2017-04-12	15	Something's Gotta Give	Comedy	128	2003	1.69
17	22	46	10	2019-02-16	22	Delit Perillard	France	female	1970-01-10	2018-11-18	46	Sleepwalking	Drama	101	2008	1.79
18	36	39	10	2019-03-20	36	Jacob Hope	Great Britan	male	1979-08-27	2018-06-24	39	I'm Not There	Drama	135	2007	1.79
27	7	36	null	2019-03-14	7	Annelous Sneep	Belgium	female	1993-11-14	2018-05-12	36	World Trade Center	Drama	129	2006	1.59
32	8	42	10	2019-02-13	8	Jaëla van den Dolder	Belgium	female	1990-08-31	2018-02-08	42	No Country for Old Men	Drama	122	2007	1.49
35	91	7	8	2019-03-27	91	Ewa Zawadzka	Poland	female	1988-07-13	2018-01-05	7	The Royal Tenenbaums	Comedy	110	2002	1.89
40	39	27	8	2019-03-22	39	Amy Haynes	Great Britan	female	1975-07-28	2018-01-19	27	Monster	Drama	109	2004	2.09
------------------------------------------------------------\
/*
Calculate the number of movie rentals.
Calculate the average rating.
Calculate the revenue from movie rentals.
Report these KPIs for each country.*/
SELECT 
	c.country ,                   -- For each country report
	count(*) AS number_renting, -- The number of movie rentals
	avg(r.rating) AS average_rating, -- The average rating
	sum(m.renting_price) AS revenue         -- The revenue from movie rentals
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE date_renting >= '2019-01-01'
GROUP BY country ;
-----------------------------------------------------------------
query result
renting
movies
customers
country	number_renting	average_rating	revenue
null	1	10.0000000000000000	1.79
Spain	26	8.0769230769230769	57.94
Great Britan	9	7.2000000000000000	17.91
Austria	4	6.0000000000000000	8.16
Italy	30	8.2352941176470588	69.90
Poland	21	8.1250000000000000	49.29
Slovenia	14	8.0000000000000000	30.26
