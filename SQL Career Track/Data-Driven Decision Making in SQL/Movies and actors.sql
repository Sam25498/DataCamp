SELECT m.title, -- Create a list of movie titles and actor names
       a.name
FROM actsin AS ai
LEFT JOIN movies AS m
ON m.movie_id = ai.movie_id
LEFT JOIN actors AS a
ON a.actor_id = ai.actor_id;
--------------------------------------------------
query result
movies
actsin
actors
title	name
Candy	Abbie Cornish
Jack and Jill	Adam Sandler
Simone	Al Pacino
The Recruit	Al Pacino
Two for the Money	Al Pacino
Jack and Jill	Al Pacino
The Fighter	Amy Adams
