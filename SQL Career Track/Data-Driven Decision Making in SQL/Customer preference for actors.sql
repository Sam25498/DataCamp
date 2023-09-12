-- Join the tables
SELECT *
FROM renting AS r
LEFT JOIN actsin AS ai
ON r.movie_id = ai.movie_id
LEFT JOIN actors AS a
ON ai.actor_id = a.actor_id;
-----------------------------------------------------------------
query result
renting
actsin
actors
renting_id	customer_id	movie_id	rating	date_renting	actsin_id	movie_id	actor_id	actor_id	name	year_of_birth	nationality	gender
1	41	8	null	2018-10-09	160	8	107	107	Patrick Swayze	1952	USA	male
1	41	8	null	2018-10-09	152	8	103	103	Natasha Richardson	1963	British	female
1	41	8	null	2018-10-09	28	8	23	23	Charlize Theron	1975	South Africa	female
2	10	29	10	2017-03-01	172	29	117	117	Rene Russo	1954	USA	female
2	10	29	10	2017-03-01	143	29	96	96	Matthew McConaughey	1969	USA	male
2	10	29	10	2017-03-01	5	29	3	3	Al Pacino	1940	USA	male
3	108	45	4	2018-06-08	118	45	74	74	John Malkovich	1953	USA	male
3	108	45	4	2018-06-08	80	45	49	49	George Clooney	1961	USA	male
3	108	45	4	2018-06-08	74	45	45	45	Frances McDormand	1957	USA	female
4	39	66	8	2018-10-22	130	66	86	86	Liam Hemsworth	1990	Australia	male
4	39	66	8	2018-10-22	121	66	77	77	Josh Hutcherson	1992	USA	male
4	39	66	8	2018-10-22	110	66	67	67	Jennifer Lawrence	1990	USA	female
--------------------------------------------------------------
--For each combination of the actors' nationality and gender, calculate the average rating, the number of ratings, the number of movie rentals, and the number of actors.

SELECT a.nationality,
       a.gender,
	   avg(r.rating) AS avg_rating, -- The average rating
	   count(r.rating) AS n_rating, -- The number of ratings
	   count(*) AS n_rentals, -- The number of movie rentals
	   count(DISTINCT a.actor_id) AS n_actors -- The number of actors
FROM renting AS r
LEFT JOIN actsin AS ai
ON ai.movie_id = r.movie_id
LEFT JOIN actors AS a
ON ai.actor_id = a.actor_id
WHERE r.movie_id IN ( 
	SELECT movie_id
	FROM renting
	GROUP BY movie_id
	HAVING COUNT(rating) >=4 )
AND r.date_renting >= '2018-04-01'
GROUP BY nationality,gender; -- Report results for each combination of the actors' nationality and gender
----------------------------------------------------------------------
query result
renting
actsin
actors
nationality	gender	avg_rating	n_rating	n_rentals	n_actors
Argentina	male	8.5000000000000000	4	5	1
Australia	female	8.6666666666666667	3	5	1
Australia	male	7.4545454545454545	11	17	3
Austria	male	8.5000000000000000	2	6	1
British	female	7.8333333333333333	54	78	3
British	male	8.1052631578947368	114	175	9
Canada	female	8.0000000000000000	5	5	1
--------------------------------------------------------------------------
  --Provide results for all aggregation levels represented in a pivot table.
SELECT a.nationality,
       a.gender,
	   AVG(r.rating) AS avg_rating,
	   COUNT(r.rating) AS n_rating,
	   COUNT(*) AS n_rentals,
	   COUNT(DISTINCT a.actor_id) AS n_actors
FROM renting AS r
LEFT JOIN actsin AS ai
ON ai.movie_id = r.movie_id
LEFT JOIN actors AS a
ON ai.actor_id = a.actor_id
WHERE r.movie_id IN ( 
	SELECT movie_id
	FROM renting
	GROUP BY movie_id
	HAVING COUNT(rating) >= 4)
AND r.date_renting >= '2018-04-01'
GROUP BY CUBE(a.nationality, a.gender); -- Provide results for all aggregation levels represented in a pivot table
---------------------------------------------------------------------------
--query result
renting
actsin
actors
nationality	gender	avg_rating	n_rating	n_rentals	n_actors
Argentina	male	8.5000000000000000	4	5	1
Argentina	null	8.5000000000000000	4	5	1
Australia	female	8.6666666666666667	3	5	1
Australia	male	7.4545454545454545	11	17	3
Australia	null	7.7142857142857143	14	22	4
Austria	male	8.5000000000000000	2	6	1
Austria	null	8.5000000000000000	2	6	1
British	female	7.8333333333333333	54	78	3
British	male	8.1052631578947368	114	175	9
British	null	8.0178571428571429	168	253	12
Canada	female	8.0000000000000000	5	5	1
Canada	male	8.4285714285714286	7	13	2
Canada	null	8.2500000000000000	12	18	3
Ireland	male	7.7142857142857143	7	16	2
Ireland	null	7.7142857142857143	7	16	2
Israel	female	8.2500000000000000	4	8	1
Israel	null	8.2500000000000000	4	8	1
