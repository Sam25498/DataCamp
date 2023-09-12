--Select all movies with more than 5 ratings. Use the first letter of the table as an alias.
SELECT *
FROM movies AS m
WHERE 5 < -- Select all movies with more than 5 ratings
	(SELECT COUNT(rating)
	FROM renting AS r
	WHERE m.movie_id = r.movie_id);
--------------------------------------------------
query result
movies
renting
movie_id	title	genre	runtime	year_of_release	renting_price
4	Training Day	Drama	122	2001	1.79
10	Simone	Drama	117	2002	2.69
12	The Two Towers	Science Fiction & Fantasy	179	2002	2.39
14	The Recruit	Mystery & Suspense	115	2003	1.69
22	Imagining Argentina	Art House & International	107	2004	2.59
23	Shall We Dance	Drama	106	2004	1.69
25	Bridget Jones - The Edge of Reason	Drama	108	2004	2.89

------------------------------------------------------
--Select all movies with an average rating higher than 8.

SELECT *
FROM movies AS m
WHERE 8 < -- Select all movies with an average rating higher than 8
	(SELECT avg(rating)
	FROM renting AS r
	WHERE r.movie_id = m.movie_id);
-----------------------------------------------------------
query result
movies
renting
movie_id	title	genre	runtime	year_of_release	renting_price
3	What Women Want	Comedy	127	2001	2.59
5	The Fellowship of the Ring	Science Fiction & Fantasy	178	2001	2.59
6	Harry Potter and the Philosopher's Stone	Science Fiction & Fantasy	152	2001	2.69
9	11'09''01 September 11	Drama	134	2002	2.99
16	25th Hour	Drama	135	2003	1.59
18	Secondhand Lions	Drama	111	2003	1.69
22	Imagining Argentina	Art House & International	107	2004	2.59
