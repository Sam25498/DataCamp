-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT film_id, imdb_score
FROM reviews
WHERE imdb_score > 7.0;

------------------------------------------------------
--query result
reviews
film_id	imdb_score
3934	7.1
74	7.6
1254	8
4841	8.1
3252	7.2
1181	7.3
3929	7.1

---------------------------------------------------------------
-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT film_id, facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

----------------------------------------------------------------------------
query result
reviews
film_id	facebook_likes
3405	0
478	491
74	930
740	0
2869	689
1181	0
2020	0

------------------------------------------------------------------------------------
-- Count the records with at least 100,000 votes
SELECT COUNT(num_votes) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;
---------------------------------------------------------------------------------
query result
reviews
films_over_100k_votes
1211
