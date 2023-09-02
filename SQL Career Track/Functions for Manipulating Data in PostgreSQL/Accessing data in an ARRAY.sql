/*In our DVD Rentals database, the film table contains an ARRAY for special_features which has a type of TEXT[]. Much like any ARRAY data type in PostgreSQL, a TEXT[] array can store an array of TEXT values. This comes in handy when you want to store things like phone numbers or email addresses as we saw in the lesson.

Let's take a look at the special_features column and also practice accessing data in the ARRAY.

Instructions 1/3
35 XP
1
Select the title and special features from the film table and compare the results between the two columns.


Take Hint (-10 XP)
2
Select all films that have a special feature Trailers by filtering on the first index of the special_features ARRAY.

3
Now let's select all films that have Deleted Scenes in the second index of the special_features ARRAY.*/
-- Select the title and special features column 
SELECT 
  title, 
  special_features
FROM film;
----------------------------
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
-------------------------------
-- Select the title and special features column 
SELECT 
  title, 
  special_features 
FROM film
-- Use the array index of the special_features column
WHERE special_features[1] = 'Trailers';
----------------------------------
--query result
film
title	special_features
BEDAZZLED MARRIED	Trailers,Deleted Scenes,Behind the Scenes
BEHAVIOR RUNAWAY	Trailers,Deleted Scenes,Behind the Scenes
BLUES INSTINCT	Trailers,Deleted Scenes,Behind the Scenes
BUBBLE GROSSE	Trailers,Commentaries,Deleted Scenes,Behind the Scenes
CAMELOT VACATION	Trailers,Commentaries,Deleted Scenes,Behind the Scenes
CASABLANCA SUPER	Trailers,Deleted Scenes,Behind the Scenes
CHARADE DUFFEL	Trailers,Deleted Scenes,Behind the Scenes

-----------------------------------------------
-- Select the title and special features column 
SELECT 
  title, 
  special_features 
FROM film
-- Use the array index of the special_features column
WHERE special_features[2] = 'Deleted Scenes';
-----------------------------------------------------
query result
film
title	special_features
BEDAZZLED MARRIED	Trailers,Deleted Scenes,Behind the Scenes
BEHAVIOR RUNAWAY	Trailers,Deleted Scenes,Behind the Scenes
BETRAYED REAR	Commentaries,Deleted Scenes,Behind the Scenes
BILKO ANONYMOUS	Commentaries,Deleted Scenes,Behind the Scenes
BIRDCAGE CASPER	Commentaries,Deleted Scenes,Behind the Scenes
BLUES INSTINCT	Trailers,Deleted Scenes,Behind the Scenes
BORROWERS BEDAZZLED	Commentaries,Deleted Scenes,Behind the Scenes
