/*
Select from table renting all movie rentals from 2018.
Filter only those records which have a movie rating.*/
SELECT *
FROM renting
WHERE date_renting BETWEEN '2018-01-01' AND '2018-12-31' -- Renting in 2018
AND rating IS NOT NULL; -- Rating exists
------------------------------------------------
query result
renting
renting_id	customer_id	movie_id	rating	date_renting
3	108	45	4	2018-06-08
4	39	66	8	2018-10-22
6	50	71	7	2018-10-09
8	73	65	10	2018-06-05
12	52	65	10	2018-06-29
21	30	60	10	2018-02-20
23	46	6	9	2018-04-09
