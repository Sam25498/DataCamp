SELECT * -- Select all records of movie rentals since January 1st 2019
FROM renting
WHERE date_renting >= '2019-01-01' ; 
-------------------------------------------------------
query result
renting
renting_id	customer_id	movie_id	rating	date_renting
5	104	15	7	2019-03-18
17	22	46	10	2019-02-16
18	36	39	10	2019-03-20
27	7	36	null	2019-03-14
32	8	42	10	2019-02-13
35	91	7	8	2019-03-27
-------------------------------------------------------
--Now, count the number of movie rentals and calculate the average rating since the beginning of 2019.
SELECT 
	count(*), -- Count the total number of rented movies
	avg(rating) -- Add the average rating
FROM renting
WHERE date_renting >= '2019-01-01';
-------------------------------------------------------
--query result
renting
count	avg
159	7.9462365591397849
-------------------------------------------------------
--Use as alias column names number_renting and average_rating respectively.
SELECT 
	COUNT(*) AS number_renting, -- Give it the column name number_renting
	AVG(rating) AS average_rating  -- Give it the column name average_rating
FROM renting
WHERE date_renting >= '2019-01-01';
-----------------------------------------------------
--query result
renting
number_renting	average_rating
159	7.9462365591397849
---------------------------------------------------
--Finally, count how many ratings exist since 2019-01-01.
SELECT 
	COUNT(*) AS number_renting,
	AVG(rating) AS average_rating, 
    count(rating) AS number_ratings -- Add the total number of ratings here.
FROM renting
WHERE date_renting >= '2019-01-01';
-----------------------------------------------------
--query result
renting
number_renting	average_rating	number_ratings
159	7.9462365591397849	93
