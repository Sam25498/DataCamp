--Select the records from the table actsin of all actors who play in a Comedy. Use the first letter of the table as an alias.

SELECT *  -- Select the records from the table `actsin` of all actors who play in a Comedy
FROM actsin AS ai
LEFT JOIN movies AS m
ON ai.movie_id = m.movie_id
WHERE m.genre = 'Comedy';
----------------------------------------------------
query result
actors
actsin
movies
actsin_id	movie_id	actor_id	movie_id	title	genre	runtime	year_of_release	renting_price
2	56	2	56	Jack and Jill	Comedy	91	2011	2.09
6	56	3	56	Jack and Jill	Comedy	91	2011	2.09
9	7	6	7	The Royal Tenenbaums	Comedy	110	2002	1.89
17	20	14	20	Love Actually	Comedy	135	2003	2.29
28	8	23	8	Waking Up in Reno	Comedy	91	2002	2.59
52	15	34	15	Somethings Gotta Give	Comedy	128	2003	1.69
53	51	34	51	Morning Glory	Comedy	107	2010	2.99
-------------------------------------------------------------
--Make a table of the records of actors who play in a Comedy and select only the actor with ID 1.

SELECT *
FROM actsin AS ai
LEFT JOIN movies AS m
ON m.movie_id = ai.movie_id
WHERE m.genre = 'Comedy'
AND ai.actor_id = 1 ; -- Select only the actor with ID 1
------------------------------------------------------------
actsin_id	movie_id	actor_id	movie_id	title	genre	runtime	year_of_release	renting_price
-----------------------------------------------------------]
---Create a list of all actors who play in a Comedy. Use the first letter of the table as an alias.

SELECT *
FROM actors AS a
WHERE EXISTS
	(SELECT *
	 FROM actsin AS ai
	 LEFT JOIN movies AS m
	 ON m.movie_id = ai.movie_id
	 WHERE m.genre = 'Comedy'
	 AND ai.actor_id = a.actor_id);
--------------------------------------------------------------
--Query result
actors
actsin
movies
actor_id	name	year_of_birth	nationality	gender
2	Adam Sandler	1966	USA	male
3	Al Pacino	1940	USA	male
6	Anjelica Huston	1951	USA	female
14	Bill Nighy	1949	British	male
23	Charlize Theron	1975	South Africa	female
34	Diane Keaton	1946	USA	female
36	Eddie Murphy	1961	USA	male
-------------------------------------------------------------
--Report the nationality and the number of actors for each nationality.
SELECT a.nationality, count(*) -- Report the nationality and the number of actors for each nationality
FROM actors AS a
WHERE EXISTS
	(SELECT ai.actor_id
	 FROM actsin AS ai
	 LEFT JOIN movies AS m
	 ON m.movie_id = ai.movie_id
	 WHERE m.genre = 'Comedy'
	 AND ai.actor_id = a.actor_id)
GROUP BY a.nationality;
---------------------------------------------------------------

query result
actors
actsin
movies
nationality	count
Northern Ireland	1
USA	22
South Africa	1
Canada	1
British	3
--------------------------------------------------------

