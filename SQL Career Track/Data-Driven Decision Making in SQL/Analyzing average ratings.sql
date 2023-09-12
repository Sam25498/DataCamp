-- Augment the records of movie rentals with information about movies and customers
SELECT *
FROM renting AS r
LEFT JOIN movies AS m
ON r.movie_id = m.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id;
-------------------------------------------------------
query result
customers
renting
movies
renting_id	customer_id	movie_id	rating	date_renting	movie_id	title	genre	runtime	year_of_release	renting_price	customer_id	name	country	gender	date_of_birth	date_account_start
1	41	8	null	2018-10-09	8	Waking Up in Reno	Comedy	91	2002	2.59	41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12
2	10	29	10	2017-03-01	29	Two for the Money	Drama	122	2005	2.79	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28
3	108	45	4	2018-06-08	45	Burn After Reading	Drama	96	2008	2.39	108	Saúl Tafoya Meraz	Spain	male	1992-05-15	2017-03-13
4	39	66	8	2018-10-22	66	The Hunger Games	Drama	142	2012	1.59	39	Amy Haynes	Great Britan	female	1975-07-28	2018-01-19
5	104	15	7	2019-03-18	15	Somethings Gotta Give	Comedy	128	2003	1.69	104	Dimitri Zambrano Morales	Spain	male	1992-06-21	2017-04-12
6	50	71	7	2018-10-09	71	Rio 2	Animation	101	2014	1.79	50	Csordás Ármin	Hungary	male	1986-11-30	2018-04-23
7	52	21	null	2018-11-10	21	The Return of the King	Science Fiction & Fantasy	200	2003	1.99	52	Szepessi Marton	Hungary	male	1983-03-14	2018-03-24
----------------------------------------------------------------------------------
-- Calculate the average rating for each country
SELECT 
	c.country,
    avg(r.rating)
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
GROUP BY c.country;
-----------------------------------------------------------------
query result
customers
renting
movies
country	avg
null	8.0000000000000000
Spain	7.6415094339622642
Great Britan	7.5200000000000000
Austria	6.8000000000000000
Poland	8.1212121212121212
Italy	8.1379310344827586
Slovenia	8.4318181818181818
----------------------------------------------------------------------
--Calculate the average rating for all aggregation levels of country and genre.
SELECT 
	c.country, 
	m.genre, 
	AVG(r.rating) AS avg_rating -- Calculate the average rating 
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
GROUP BY CUBE(c.country, m.genre); -- For all aggregation levels of country and genre
-----------------------------------------------
query result
customers
renting
movies
country	genre	avg_rating
null	null	7.9390243902439024
France	Mystery & Suspense	6.0000000000000000
Slovenia	Action & Adventure	null
Spain	Animation	null
Poland	Comedy	8.2000000000000000
Denmark	Drama	7.6000000000000000
Italy	Science Fiction & Fantasy	7.6666666666666667


