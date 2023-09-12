SELECT movie_id, -- Select movie IDs with more than 5 views
        count(movie_id)
FROM renting
GROUP BY movie_id
HAVING count(*) > 5
;
-----------------------------------------------------
--query result
renting
movies
movie_id	count
71	6
68	7
51	7
70	7
52	12
69	8
22	8
----------------------------------------------------
SELECT *
FROM movies
WHERE movie_id IN  -- Select movie IDs from the inner query
	(SELECT movie_id
	FROM renting
	GROUP BY movie_id
	HAVING COUNT(*) > 5)
-----------------------------------------------------
query result
renting
movies
movie_id	title	genre	runtime	year_of_release	renting_price
1	One Night at McCool's	Comedy	93	2001	2.09
2	Swordfish	Drama	99	2001	2.19
3	What Women Want	Comedy	127	2001	2.59
4	Training Day	Drama	122	2001	1.79
5	The Fellowship of the Ring	Science Fiction & Fantasy	178	2001	2.59
6	Harry Potter and the Philosopher's Stone	Science Fiction & Fantasy	152	2001	2.69
7	The Royal Tenenbaums	Comedy	110	2002	1.89
