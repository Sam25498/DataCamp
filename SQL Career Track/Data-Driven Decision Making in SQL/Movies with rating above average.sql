SELECT AVG(rating) -- Calculate the total average rating
FROM renting;
------------------------------
avg
7.9390243902439024
-------------------------------
SELECT movie_id, -- Select movie IDs and calculate the average rating 
       avg(rating)
FROM renting
GROUP BY movie_id
HAVING avg(rating) >            -- Of movies with rating above average
	(SELECT AVG(rating)
	FROM renting);
--------------------------------
query result
movies
renting
movie_id	avg
54	8.1666666666666667
29	8.0000000000000000
71	8.0000000000000000
34	8.0000000000000000
51	8.4285714285714286
63	9.3333333333333333
35	8.0000000000000000
--------------------------------------
--The advertising team only wants a list of movie titles. Report the movie titles of all movies with average rating higher than the total average.
SELECT title -- Report the movie titles of all movies with average rating higher than the total average
FROM movies
WHERE movie_id IN
	(SELECT movie_id
	 FROM renting
     GROUP BY movie_id
     HAVING AVG(rating) > 
		(SELECT AVG(rating)
		 FROM renting));
--------------------------------------------
query result
movies
renting
title
What Women Want
The Fellowship of the Ring
Harry Potter and the Philosopher's Stone
The Royal Tenenbaums
Waking Up in Reno
11'09''01 September 11
Harry Potter and the Chamber of Secrets
25th Hour
