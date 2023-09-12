SELECT movie_id -- Select the IDs of all dramas
FROM movies
WHERE genre = 'Drama';
---------------------------------------------
query result
movies
renting
movie_id
2
4
9
10
16
18
19
23
25
-------------------------------------------
SELECT movie_id -- Select the IDs of all movies with average rating higher than 9
FROM renting
GROUP BY movie_id
HAVING avg(rating) > 9;
-----------------------------------
query result
movies
renting
movie_id
63
42
48
5
-----------------------------------
--Select the IDs of all dramas with average rating higher than 9.

SELECT movie_id
FROM movies
WHERE genre = 'Drama'
INTERSECT  -- Select the IDs of all dramas with average rating higher than 9
SELECT movie_id
FROM renting
GROUP BY movie_id
HAVING AVG(rating)>9;
---------------------------------------
movie_id
42
---------------------------------------
--Select all movies of in the drama genre with an average rating higher than 9.
SELECT *
FROM movies
WHERE movie_id =-- Select all movies of genre drama with average rating higher than 9
   (SELECT movie_id
    FROM movies
    WHERE genre = 'Drama'
    INTERSECT
    SELECT movie_id
    FROM renting
    GROUP BY movie_id
    HAVING AVG(rating)>9);
-----------------------------------------------------
query result
movies
renting
movie_id	title	genre	runtime	year_of_release	renting_price
42	No Country for Old Men	Drama	122	2007	1.49
-----------------------------------------------------------------
