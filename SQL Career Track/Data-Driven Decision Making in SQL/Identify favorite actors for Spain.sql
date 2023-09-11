/*
Identify favorite actors for Spain
You're now going to explore actor popularity in Spain. Use as alias the first letter of the table, except for the table actsin use ai instead.

Instructions 1/3
35 XP
1
2
3
Augment the table renting with information about customers and actors.
*/
SELECT *
FROM renting as r 
LEFT JOIN customers AS c  -- Augment table renting with information about customers 
ON r.customer_id = c.customer_id
LEFT JOIN actsin AS ai  -- Augment the table renting with the table actsin
ON r.movie_id = ai.movie_id
LEFT JOIN actors AS a  -- Augment table renting with information about actors
ON ai.actor_id = a.actor_id;
-------------------------------------------------------------------------------------------
query result
renting
actors
customers
actsin
renting_id	customer_id	movie_id	rating	date_renting	customer_id	name	country	gender	date_of_birth	date_account_start	actsin_id	movie_id	actor_id	actor_id	name	year_of_birth	nationality	gender
1	41	8	null	2018-10-09	41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12	160	8	107	107	Patrick Swayze	1952	USA	male
1	41	8	null	2018-10-09	41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12	152	8	103	103	Natasha Richardson	1963	British	female
1	41	8	null	2018-10-09	41	Zara Mitchell	Great Britan	female	1994-07-08	2017-06-12	28	8	23	23	Charlize Theron	1975	South Africa	female
2	10	29	10	2017-03-01	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28	172	29	117	117	Rene Russo	1954	USA	female
2	10	29	10	2017-03-01	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28	143	29	96	96	Matthew McConaughey	1969	USA	male
2	10	29	10	2017-03-01	10	Arnout Veenhuis	Belgium	male	1984-07-26	2017-01-28
---------------------------------------------------------------------------------------
/*
Report the number of movie rentals and the average rating for each actor, separately for male and female customers.
Report only actors with more than 5 movie rentals.*/
SELECT a.name,  c.gender,
       COUNT(*) AS number_views, 
       AVG(r.rating) AS avg_rating
FROM renting as r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
LEFT JOIN actsin as ai
ON r.movie_id = ai.movie_id
LEFT JOIN actors as a
ON ai.actor_id = a.actor_id

GROUP BY a.name , c.gender -- For each actor, separately for male and female customers
HAVING AVG(r.rating) IS NOT NULL 
AND COUNT(*) > 5 -- Report only actors with more than 5 movie rentals
ORDER BY avg_rating DESC, number_views DESC;
-------------------------------------------------------------------------------------
query result
renting
actors
customers
actsin
name	gender	number_views	avg_rating
Tommy Lee Jones	female	6	10.0000000000000000
Javier Bardem	female	6	10.0000000000000000
Josh Brolin	female	6	10.0000000000000000
Christoph Waltz	female	8	9.3333333333333333
Leonardo DiCaprio	female	8	9.3333333333333333
Barry Pepper	female	7	9.3333333333333333
Edward Norton	female	7	9.3333333333333333
Richard Gere	male	6	9.2000000000000000
Rene Russo	female	8	9.0000000000000000
-------------------------------------------------------------------------
--Now, report the favorite actors only for customers from Spain.
SELECT a.name,  c.gender,
       COUNT(*) AS number_views, 
       AVG(r.rating) AS avg_rating
FROM renting as r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
LEFT JOIN actsin as ai
ON r.movie_id = ai.movie_id
LEFT JOIN actors as a
ON ai.actor_id = a.actor_id
WHERE  c.country = 'Spain'-- Select only customers from Spain
GROUP BY a.name, c.gender
HAVING AVG(r.rating) IS NOT NULL 
  AND COUNT(*) > 5 
ORDER BY avg_rating DESC, number_views DESC;
----------------------------------------------------------------------
query result
renting
actors
customers
actsin
actsin_id	movie_id	actor_id
1	37	1
2	56	2
3	10	3
4	14	3
5	29	3
6	56	3
7	53	4
