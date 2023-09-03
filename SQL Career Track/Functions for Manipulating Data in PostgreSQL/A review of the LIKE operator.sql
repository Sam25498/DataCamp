/*
A review of the LIKE operator
The LIKE operator allows us to filter our queries by matching one or more characters in text data. By using the % wildcard we can match one or more characters in a string. This is useful when you want to return a result set that matches certain characteristics and can also be very helpful during exploratory data analysis or data cleansing tasks.

Let's explore how different usage of the % wildcard will return different results by looking at the film table of the Sakila DVD Rental database.

Instructions 1/3
35 XP
1
Select all columns for all records that begin with the word GOLD.


Take Hint (-10 XP)
2
Now select all records that end with the word GOLD.

3
Finally, select all records that contain the word 'GOLD'.
*/

-- Select all columns
SELECT *
FROM film
-- Select only records that begin with the word 'GOLD'
WHERE title LIKE 'GOLD%';

-----------------------------------------------
query result
film
film_id	title	description	release_year	language_id	original_language_id	rental_duration	rental_rate	length	replacement_cost	rating	last_update	special_features
365	GOLD RIVER	A Taut Documentary of a Database Administrator And a Waitress who must Reach a Mad Scientist in A Baloon Factory	2006	1	1	4	4.99	154	21.99	R	2006-02-15 05:03:00	Trailers,Commentaries,Deleted Scenes,Behind the Scenes
366	GOLDFINGER SENSIBILITY	A Insightful Drama of a Mad Scientist And a Hunter who must Defeat a Pastry Chef in New Orleans	2006	1	1	3	0.99	93	29.99	G	2006-02-15 05:03:00	Trailers,Commentaries,Behind the Scenes
367	GOLDMINE TYCOON	A Brilliant Epistle of a Composer And a Frisbee who must Conquer a Husband in The Outback	2006	1	1	6	0.99	153	20.99	R	2006-02-15 05:03:00	Trailers,Behind the Scenes

-------------------------------------------------
1234
SELECT *
FROM film
-- Select only records that end with the word 'GOLD'
WHERE title LIKE '%GOLD';
-------------------------------------------------
query result
film
film_id	title	description	release_year	language_id	original_language_id	rental_duration	rental_rate	length	replacement_cost	rating	last_update	special_features
644	OSCAR GOLD	A Insightful Tale of a Database Administrator And a Dog who must Face a Madman in Soviet Georgia	2006	1	1	7	2.99	115	29.99	PG	2006-02-15 05:03:00	Behind the Scenes
870	SWARM GOLD	A Insightful Panorama of a Crocodile And a Boat who must Conquer a Sumo Wrestler in A MySQL Convention	2006	1	1	4	0.99	123	12.99	PG-13	2006-02-15 05:03:00	Trailers,Commentaries
--------------------------------------------
1234
SELECT *
FROM film
-- Select only records that contain the word 'GOLD'
WHERE title LIKE '%GOLD%';
------------------------------------------------------------
query result
film
film_id	title	description	release_year	language_id	original_language_id	rental_duration	rental_rate	length	replacement_cost	rating	last_update	special_features
365	GOLD RIVER	A Taut Documentary of a Database Administrator And a Waitress who must Reach a Mad Scientist in A Baloon Factory	2006	1	1	4	4.99	154	21.99	R	2006-02-15 05:03:00	Trailers,Commentaries,Deleted Scenes,Behind the Scenes
2	ACE GOLDFINGER	A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China	2006	1	1	3	4.99	48	12.99	G	2006-02-15 05:03:00	Trailers,Deleted Scenes
95	BREAKFAST GOLDFINGER	A Beautiful Reflection of a Student And a Student who must Fight a Moose in Berlin	2006	1	1	5	4.99	123	18.99	G	2006-02-15 05:03:00	Trailers,Commentaries,Deleted Scenes
366	GOLDFINGER SENSIBILITY	A Insightful Drama of a Mad Scientist And a Hunter who must Defeat a Pastry Chef in New Orleans	2006	1	1	3	0.99	93	29.99	G	2006-02-15 05:03:00	Trailers,Commentaries,Behind the Scenes
367	GOLDMINE TYCOON	A Brilliant Epistle of a Composer And a Frisbee who must Conquer a Husband in The Outback	2006	1	1	6	0.99	153	20.99	R	2006-02-15 05:03:00	Trailers,Behind the Scenes
644	OSCAR GOLD	A Insightful Tale of a Database Administrator And a Dog who must Face a Madman in Soviet Georgia	2006	1	1	7	2.99	115	29.99	PG	2006-02-15 05:03:00	Behind the Scenes
798	SILVERADO GOLDFINGER	A Stunning Epistle of a Sumo Wrestler And a Man who must Challenge a Waitress in Ancient India	2006	1	1	4	4.99	74	11.99	PG	2006-02-15 05:03:00	Trailers,Commentaries
