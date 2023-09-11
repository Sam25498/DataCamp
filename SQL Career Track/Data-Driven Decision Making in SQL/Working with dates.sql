SELECT *
FROM renting
WHERE date_renting = '2018-10-09'; -- Movies rented on October 9th, 2018
----------------------------------------------------
renting_id	customer_id	movie_id	rating	date_renting
1	41	8	null	2018-10-09
6	50	71	7	2018-10-09
-----------------------------------------------------
SELECT *
FROM renting
WHERE date_renting BETWEEN '2018-04-01' AND '2018-08-31'; -- from beginning April 2018 to end August 2018
--------------------------------------------------
query result
renting
renting_id	customer_id	movie_id	rating	date_renting
3	108	45	4	2018-06-08
8	73	65	10	2018-06-05
12	52	65	10	2018-06-29
14	8	29	null	2018-08-03
16	59	59	null	2018-08-12
23	46	6	9	2018-04-09
24	57	41	7	2018-08-16
--------------------------------------------------
--Put the most recent records of movie rentals on top of the resulting table and order them in decreasing order.
SELECT *
FROM renting
WHERE date_renting BETWEEN '2018-04-01' AND '2018-08-31'
ORDER BY date_renting DESC; -- Order by recency in decreasing order
--------------------------------------------------
--QUERY RESULT
renting_id	customer_id	movie_id	rating	date_renting
76	112	10	null	2018-08-31
279	21	62	null	2018-08-30
551	86	13	8	2018-08-29
454	118	32	6	2018-08-28
463	29	68	null	2018-08-28
39	25	52	null	2018-08-28
258	65	44	8	2018-08-28
