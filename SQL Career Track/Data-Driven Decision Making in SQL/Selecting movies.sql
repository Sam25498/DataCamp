SELECT *
FROM movies
WHERE genre <> 'Drama'; -- All genres except drama
-------------------------------------------------
query result
movies
movie_id	title	genre	runtime	year_of_release	renting_price
1	One Night at McCool's	Comedy	93	2001	2.09
3	What Women Want	Comedy	127	2001	2.59
5	The Fellowship of the Ring	Science Fiction & Fantasy	178	2001	2.59
6	Harry Potter and the Philosopher's Stone	Science Fiction & Fantasy	152	2001	2.69
7	The Royal Tenenbaums	Comedy	110	2002	1.89
8	Waking Up in Reno	Comedy	91	2002	2.59
11	Showtime	Comedy	95	2002	1.79
--------------------------------------------------
--Select the movies 'Showtime', 'Love Actually' and 'The Fighter'.
SELECT *
FROM movies
WHERE title IN('Showtime','Love Actually', 'The Fighter'); -- Select all movies with the given titles
--------------------------------------------------
query result
movies
movie_id	title	genre	runtime	year_of_release	renting_price
11	Showtime	Comedy	95	2002	1.79
20	Love Actually	Comedy	135	2003	2.29
53	The Fighter	Other	116	2010	2.49
--------------------------------------------------
SELECT *
FROM movies
ORDER BY renting_price ASC ; -- Order the movies by increasing renting price
-------------------------------------------------------
--query result
movies
movie_id	title	genre	runtime	year_of_release	renting_price
42	No Country for Old Men	Drama	122	2007	1.49
16	25th Hour	Drama	135	2003	1.59
49	Harry Potter and the Half-Blood Prince	Science Fiction & Fantasy	153	2009	1.59
37	Candy	Drama	116	2006	1.59
36	World Trade Center	Drama	129	2006	1.59
67	White House Down	Drama	131	2013	1.59
