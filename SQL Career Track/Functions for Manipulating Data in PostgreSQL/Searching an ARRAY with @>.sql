/*
The contains operator @> operator is alternative syntax to the ANY function and matches data in an ARRAY using the following syntax.

WHERE array_name @> ARRAY['search text'] :: type[]
So let's practice using this operator in the exercise.

Instructions
100 XP
Use the contains operator to match the text Deleted Scenes in the special_features column.*/
SELECT 
  title, 
  special_features 
FROM film 
-- Filter where special_features contains 'Deleted Scenes'
WHERE special_features @> ARRAY['Deleted Scenes'];
----------------------------------------------------------------
query result
film
title	special_features
BEACH HEARTBREAKERS	Deleted Scenes,Behind the Scenes
BEAST HUNCHBACK	Deleted Scenes,Behind the Scenes
BEDAZZLED MARRIED	Trailers,Deleted Scenes,Behind the Scenes
BEHAVIOR RUNAWAY	Trailers,Deleted Scenes,Behind the Scenes
BETRAYED REAR	Commentaries,Deleted Scenes,Behind the Scenes
BILKO ANONYMOUS	Commentaries,Deleted Scenes,Behind the Scenes
BIRDCAGE CASPER	Commentaries,Deleted Scenes,Behind the Scenes
