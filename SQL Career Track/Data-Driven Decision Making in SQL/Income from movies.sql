SELECT m.title, -- Use a join to get the movie title and price for each movie rental
       renting_price
FROM renting AS r
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id;
----------------------------------------------------
query result
renting
movies
title	renting_price
Waking Up in Reno	2.59
Two for the Money	2.79
Burn After Reading	2.39
The Hunger Games	1.59
Somethings Gotta Give	1.69
Rio 2	1.79
The Return of the King	1.99
---------------------------------------------------------
/*
Report the total income for each movie.
Order the result by decreasing income.
*/
SELECT rm.title ,-- Report the income from movie rentals for each movie 
       SUM(rm.renting_price) AS income_movie
FROM
       (SELECT m.title,  
               m.renting_price
       FROM renting AS r
       LEFT JOIN movies AS m
       ON r.movie_id=m.movie_id) AS rm
GROUP BY rm.title
ORDER BY income_movie DESC; -- Order the result by decreasing income
-----------------------------------------------------------


query result
renting
movies
title	income_movie
Bridget Jones - The Edge of Reason	37.57
Fair Game	34.68
The Kingdom	31.35
Two for the Money	30.69
Django Unchained	29.59
Simone	29.59
What Women Want	28.49
