/*
As we saw in the video, PostgreSQL also provides the ability to filter results by searching for values in an ARRAY. The ANY function allows you to search for a value in any index position of an ARRAY. Here's an example.

WHERE 'search text' = ANY(array_name)
When using the ANY function, the value you are filtering on appears on the left side of the equation with the name of the ARRAY column as the parameter in the ANY function.

Instructions
100 XP
Match 'Trailers' in any index of the special_features ARRAY regardless of position.*/
SELECT
  title, 
  special_features 
FROM film 
-- Modify the query to use the ANY function 
WHERE 'Trailers' = ANY(special_features);
------------------------------------------------------------
query result
film
title	special_features
BEDAZZLED MARRIED	Trailers,Deleted Scenes,Behind the Scenes
BEHAVIOR RUNAWAY	Trailers,Deleted Scenes,Behind the Scenes
BLUES INSTINCT	Trailers,Deleted Scenes,Behind the Scenes
BUBBLE GROSSE	Trailers,Commentaries,Deleted Scenes,Behind the Scenes
CAMELOT VACATION	Trailers,Commentaries,Deleted Scenes,Behind the Scenes
CASABLANCA SUPER	Trailers,Deleted Scenes,Behind the Scenes
CHARADE DUFFEL	Trailers,Deleted Scenes,Behind the Scenes
