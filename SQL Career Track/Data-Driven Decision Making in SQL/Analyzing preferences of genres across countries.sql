--Augment the renting records with information about movies and customers.

-- Join the tables
SELECT *
FROM renting AS r
LEFT JOIN movies AS m
ON r.movie_id = m.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id;
--------------------------------------------------
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
------------------------------------------------------
--Calculate the average ratings and the number of ratings for each country and each genre. Include the columns country and genre in the SELECT clause.
SELECT 
	c.country, -- Select country
	m.genre, -- Select genre
	avg(r.rating), -- Average ratings
	count(*)  -- Count number of movie rentals
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
GROUP BY (c.country, m.genre) -- Aggregate for each country and each genre
ORDER BY c.country, m.genre;
--------------------------------------------------------
query result
customers
renting
movies
country	genre	avg	count
Austria	Comedy	8.0000000000000000	1
Austria	Drama	6.0000000000000000	2
Austria	Mystery & Suspense	null	1
Austria	Science Fiction & Fantasy	6.6666666666666667	3
Belgium	Comedy	null	1
Belgium	Drama	9.1666666666666667	15
Belgium	Mystery & Suspense	null	1
Belgium	Science Fiction & Fantasy	8.5000000000000000	7
Denmark	Drama	7.6000000000000000	12
Denmark	Mystery & Suspense	7.2500000000000000	4
----------------------------------------------------------
--Finally, calculate the average ratings and the number of ratings for each country and genre, as well as an aggregation over all genres for each country and the overall average and total number.

-- Group by each county and genre with OLAP extension
SELECT 
	c.country, 
	m.genre, 
	AVG(r.rating) AS avg_rating, 
	COUNT(*) AS num_rating
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
GROUP BY ROLLUP(c.country, m.genre)
ORDER BY c.country, m.genre;
----------------------------------------------------------
query result
customers
renting
movies
country	genre	avg_rating	num_rating
Austria	Comedy	8.0000000000000000	1
Austria	Drama	6.0000000000000000	2
Austria	Mystery & Suspense	null	1
Austria	Science Fiction & Fantasy	6.6666666666666667	3
Austria	null	6.8000000000000000	7
Belgium	Comedy	null	1
Belgium	Drama	9.1666666666666667	15
Belgium	Mystery & Suspense	null	1
Belgium	Science Fiction & Fantasy	8.5000000000000000	7
Belgium	null	8.9000000000000000	24
