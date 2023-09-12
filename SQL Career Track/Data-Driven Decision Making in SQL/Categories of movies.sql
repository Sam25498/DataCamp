/*
Categories of movies
Give an overview on the movies available on MovieNow. List the number of movies for different genres and release years.

Instructions 1/2
50 XP
1
2
List the number of movies for different genres and the year of release on all aggregation levels by using the CUBE operator.*/
SELECT genre,
       year_of_release,
       count(*)
FROM movies
GROUP BY CUBE(genre, year_of_release)
ORDER BY year_of_release;
----------------------------------------------------------
genre	year_of_release	count
null	2001	6
Drama	2001	2
Comedy	2001	2
Science Fiction & Fantasy	2001	2
Comedy	2002	3
null	2002	7
Science Fiction & Fantasy	2002	2
