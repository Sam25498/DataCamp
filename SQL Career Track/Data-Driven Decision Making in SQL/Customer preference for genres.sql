--Augment the records of movie rentals with information about movies. Use the first letter of the table as alias.

SELECT *
FROM renting AS r
LEFT JOIN movies AS m -- Augment the table with information about movies
ON m.movie_id = r.movie_id;
------------------------------------------------
query result
customers
renting
movies
renting_id	customer_id	movie_id	rating	date_renting	movie_id	title	genre	runtime	year_of_release	renting_price
1	41	8	null	2018-10-09	8	Waking Up in Reno	Comedy	91	2002	2.59
2	10	29	10	2017-03-01	29	Two for the Money	Drama	122	2005	2.79
3	108	45	4	2018-06-08	45	Burn After Reading	Drama	96	2008	2.39
4	39	66	8	2018-10-22	66	The Hunger Games	Drama	142	2012	1.59
5	104	15	7	2019-03-18	15	Somethings Gotta Give	Comedy	128	2003	1.69
6	50	71	7	2018-10-09	71	Rio 2	Animation	101	2014	1.79
7	52	21	null	2018-11-10	21	The Return of the King	Science Fiction & Fantasy	200	2003	1.99
-------------------------------------------------------------
--Select records of movies with at least 4 ratings, starting from 2018-04-01.

SELECT *
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE r.movie_id IN ( -- Select records of movies with at least 4 ratings
	SELECT movie_id
	FROM renting
	GROUP BY movie_id
	HAVING count(rating) >= 4)
AND date_renting >= '2018-04-01'; -- Select records of movie rentals since 2018-04-01
--------------------------------------------------------------------

query.sql
123456789101112131415
SELECT m.genre, -- For each genre, calculate:
	   ___, -- The average rating and use the alias avg_rating
	   ___, -- The number of ratings and use the alias n_rating
	   ___,     -- The number of movie rentals and use the alias n_rentals
	   ___ -- The number of distinct movies and use the alias n_movies
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE r.movie_id IN ( 
	SELECT movie_id
-------------------------------------------------------------------------
query result
customers
renting
movies
renting_id	customer_id	movie_id	rating	date_renting	movie_id	title	genre	runtime	year_of_release	renting_price
3	108	45	4	2018-06-08	45	Burn After Reading	Drama	96	2008	2.39
4	39	66	8	2018-10-22	66	The Hunger Games	Drama	142	2012	1.59
6	50	71	7	2018-10-09	71	Rio 2	Animation	101	2014	1.79
8	73	65	10	2018-06-05	65	Ghost Rider: Spirit of Vengeance	Action & Adventure	96	2012	1.79
12	52	65	10	2018-06-29	65	Ghost Rider: Spirit of Vengeance	Action & Adventure	96	2012	1.79
14	8	29	null	2018-08-03	29	Two for the Money	Drama	122	2005	2.79
17	22	46	10	2019-02-16	46	Sleepwalking	Drama	101
  --------------------------------------------------------------------------------------------
--For each genre, calculate the average rating (use the alias avg_rating), the number of ratings (use the alias n_rating), the number of movie rentals (use the alias n_rentals), and the number of distinct movies (use the alias n_movies).

SELECT m.genre, -- For each genre, calculate:
	   avg(r.rating) AS avg_rating, -- The average rating and use the alias avg_rating
	   count(r.rating) AS n_rating, -- The number of ratings and use the alias n_rating
	   count(*) AS n_rentals,     -- The number of movie rentals and use the alias n_rentals
	   count(DISTINCT r.movie_id) AS n_movies -- The number of distinct movies and use the alias n_movies
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE r.movie_id IN ( 
	SELECT movie_id
	FROM renting
	GROUP BY movie_id
	HAVING COUNT(rating) >= 3)
AND r.date_renting >= '2018-01-01'
GROUP BY m.genre;
-------------------------------------------------------------------
query result
customers
renting
movies
genre	avg_rating	n_rating	n_rentals	n_movies
Action & Adventure	8.7142857142857143	7	9	2
Animation	7.8333333333333333	6	10	2
Art House & International	8.5000000000000000	4	5	1
Comedy	7.9500000000000000	20	31	5
Drama	7.7482517482517483	143	245	34
Mystery & Suspense	7.4285714285714286	7	19	3
Other	8.4285714285714286	7	16	2
--------------------------------------------------------------------
-- Order the table by decreasing average rating.
SELECT genre,
	   AVG(rating) AS avg_rating,
	   COUNT(rating) AS n_rating,
       COUNT(*) AS n_rentals,     
	   COUNT(DISTINCT m.movie_id) AS n_movies 
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE r.movie_id IN ( 
	SELECT movie_id
	FROM renting
	GROUP BY movie_id
	HAVING COUNT(rating) >= 3 )
AND r.date_renting >= '2018-01-01'
GROUP BY genre
ORDER BY avg_rating DESC; -- Order the table by decreasing average rating
------------------------------------------------------------------
query result
customers
renting
movies
genre	avg_rating	n_rating	n_rentals	n_movies
Action & Adventure	8.7142857142857143	7	9	2
Art House & International	8.5000000000000000	4	5	1
Other	8.4285714285714286	7	16	2
Science Fiction & Fantasy	8.2765957446808511	47	70	10
Comedy	7.9500000000000000	20	31	5
Animation	7.8333333333333333	6	10	2
Drama	7.7482517482517483	143	245	34
Mystery & Suspense	7.4285714285714286	7	19	3
