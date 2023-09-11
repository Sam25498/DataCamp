SELECT *  -- Select all
FROM renting;        -- From table renting
----------------------------------------------------------
renting_id	customer_id	movie_id	rating	date_renting
1	41	8	null	2018-10-09
2	10	29	10	2017-03-01
3	108	45	4	2018-06-08
4	39	66	8	2018-10-22
5	104	15	7	2019-03-18
--------------------------------------------------------
--Now select only those columns from renting which are needed to calculate the average rating per movie.

SELECT movie_id,  -- Select all columns needed to compute the average rating per movie
       rating
FROM renting;
-----------------------------------------------------
query result
renting
movie_id	rating
8	null
29	10
45	4
66	8
15	7
71	7
------------------------------------------------------
