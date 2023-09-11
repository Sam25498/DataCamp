/*
Select all movie rentals of the movie with movie_id 25 from the table renting.
For those records, calculate the minimum, maximum and average rating and count the number of ratings for this movie.*/
SELECT min(rating) AS min_rating, -- Calculate the minimum rating and use alias min_rating
	   max(rating) AS max_rating, -- Calculate the maximum rating and use alias max_rating
	   avg(rating) AS avg_rating, -- Calculate the average rating and use alias avg_rating
	   count(rating) AS number_ratings -- Count the number of ratings and use alias number_ratings
FROM renting
WHERE movie_id = '25' ; -- Select all records of the movie with ID 25
--------------------------------------------------
--query result
renting
min_rating	max_rating	avg_rating	number_ratings
5	10	7.5000000000000000	8
