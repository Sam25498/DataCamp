--Group the data in the table renting by movie_id and report the ID and the average rating.
SELECT movie_id, 
       avg(rating)    -- Calculate average rating per movie
FROM renting
GROUP BY movie_id;
----------------------------------------
--query result
renting
movie_id	avg
54	8.1666666666666667
29	8.0000000000000000
71	8.0000000000000000
68	6.3333333333333333
4	7.8888888888888889
34	8.0000000000000000
51	8.4285714285714286
-------------------------------------------
--Add two columns for the number of ratings and the number of movie rentals to the results table.
--Use alias names avg_rating, number_rating and number_renting for the corresponding columns.
SELECT movie_id, 
       AVG(rating) AS avg_rating, -- Use as alias avg_rating
       count(rating) AS number_rating,                -- Add column for number of ratings with alias number_rating
       count(renting) AS number_renting                 -- Add column for number of movie rentals with alias number_renting
FROM renting
GROUP BY movie_id;
---------------------------------------------
query result
renting
movie_id	avg_rating	number_rating	number_renting
54	8.1666666666666667	6	9
29	8.0000000000000000	7	11
71	8.0000000000000000	4	6
68	6.3333333333333333	3	7
4	7.8888888888888889	9	14
34	8.0000000000000000	6	8
51	8.4285714285714286	7	7
------------------------------------------------
--Order the rows of the table by the average rating such that it is in decreasing order.
--Observe what happens to NULL values.
SELECT movie_id, 
       AVG(rating) AS avg_rating,
       COUNT(rating) AS number_ratings,
       COUNT(*) AS number_renting
FROM renting
GROUP BY movie_id
ORDER BY avg_rating DESC; -- Order by average rating in decreasing order
---------------------------------------------
query result
renting
movie_id	avg_rating	number_ratings	number_renting
11	null	0	6
48	10.0000000000000000	2	5
5	9.7500000000000000	4	8
42	9.6000000000000000	5	10
63	9.3333333333333333	6	11
65	9.0000000000000000	5	5
18	9.0000000000000000	5	7

