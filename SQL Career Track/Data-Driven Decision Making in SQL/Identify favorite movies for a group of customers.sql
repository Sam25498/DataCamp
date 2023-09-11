/*
Augment the table renting with customer information and information about the movies.
For each join use the first letter of the table name as alias.
*/
SELECT *
FROM renting AS r
LEFT JOIN customers AS c   -- Add customer information
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m   -- Add movie information
ON m.movie_id = r.movie_id;
-----------------------------------------------------------
query result
renting
movies
customers
renting_id	customer_id	movie_id	rating	date_renting	customer_id	name	country	gender	date_of_birth	date_account_start	movie_id	title	genre	runtime	year_of_release	renting_price
1	41	8	null	2018-10-09	41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12	8	Waking Up in Reno	Comedy	91	2002	2.59
2	10	29	10	2017-03-01	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28	29	Two for the Money	Drama	122	2005	2.79
3	108	45	4	2018-06-08	108	Saúl Tafoya Meraz	Spain	male	1992-05-15	2017-03-13	45	Burn After Reading	Drama	96	2008	2.39
4	39	66	8	2018-10-22	39	Amy Haynes	Great Britan	female	1975-07-28	2018-01-19	66	The Hunger Games	Drama	142	2012	1.59
5	104	15	7	2019-03-18	104	Dimitri Zambrano Morales	Spain	male	1992-06-21	2017-04-12	15	Somethings Gotta Give	Comedy	128	2003	1.69
6	50	71	7	2018-10-09	50	Csordás Ármin	Hungary	male	1986-11-30	2018-04-23	71	Rio 2	Animation	101	2014	1.79

------------------------------------------------------------------
--Select only those records of customers born in the 70s.
SELECT *
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE date_of_birth BETWEEN '1970-01-01' AND '1979-12-31'; -- Select customers born in the 70s
--------------------------------------------------------------
query result
renting
movies
customers
renting_id	customer_id	movie_id	rating	date_renting	customer_id	name	country	gender	date_of_birth	date_account_start	movie_id	title	genre	runtime	year_of_release	renting_price
4	39	66	8	2018-10-22	39	Amy Haynes	Great Britan	female	1975-07-28	2018-01-19	66	The Hunger Games	Drama	142	2012	1.59
11	61	61	null	2017-06-04	61	Nella Manfrin	Italy	female	1974-01-11	2017-05-14	61	Harry Potter and the Deathly Hallows – Part 2	Science Fiction & Fantasy	130	2011	1.99
15	13	5	10	2017-11-25	13	Thomas T. Nissen	Denmark	male	1975-09-25	2017-04-30	5	The Fellowship of the Ring	Science Fiction & Fantasy	178	2001	2.59
17	22	46	10	2019-02-16	22	Delit Perillard	France	female	1970-01-10	2018-11-18	46	Sleepwalking	Drama	101	2008	1.79
18	36	39	10	2019-03-20	36	Jacob Hope	Great Britan	male	1979-08-27	2018-06-24	39	Im Not There	Drama	135	2007	1.79
21	30	60	10	2018-02-20	30	Gradasso Mousseau	France	male	1976-07-11	2017-10-10	60	Black Death	Drama	102	2011	2.69
-----------------------------------------------------------------------------------------
--For each movie, report the number of times it was rented, as well as the average rating. Limit your results to customers born in the 1970s.
SELECT m.title, 
count(r.renting_id), -- Report number of views per movie
avg(r.rating) -- Report the average rating per movie
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE c.date_of_birth BETWEEN '1970-01-01' AND '1979-12-31'
GROUP BY m.title;
---------------------------------------------------------------------------
query result
renting
movies
customers
title	count	avg
V for Vendetta	2	7.0000000000000000
The Fighter	4	10.0000000000000000
Winters Bone	2	9.5000000000000000
A Good Woman	4	7.3333333333333333
The Return of the King	1	null
Secondhand Lions	4	9.6666666666666667
The Frozen Ground	4	7.5000000000000000
---------------------------------------------------------------------------------
/*
Remove those movies from the table with only one rental.
Order the result table such that movies with highest rating come first.*/
SELECT m.title, 
COUNT(*),
AVG(r.rating)
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE c.date_of_birth BETWEEN '1970-01-01' AND '1979-12-31'
GROUP BY m.title
HAVING count(*) > 1 -- Remove movies with only one rental
ORDER BY AVG(r.rating) DESC; -- Order with highest rating first
--------------------------------------------------------------------------------------
query result
renting
movies
customers
title	count	avg
Showtime	5	null
Harry Potter and the Deathly Hallows – Part 2	2	null
Waking Up in Reno	2	null
Ray	2	null
Django Unchained	4	10.0000000000000000
The Fighter	4	10.0000000000000000
One Night at McCool's	2	10.0000000000000000
No Country for Old Men	3	10.0000000000000000
The Fellowship of the Ring	2	10.0000000000000000
I'm Not There	2	10.0000000000000000
Secondhand Lions	4	9.6666666666666667
Winter's Bone	2	9.5000000000000000
