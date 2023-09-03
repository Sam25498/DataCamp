/*
Measuring similarity between two strings
Now that you have enabled the fuzzystrmatch and pg_trgm extensions you can begin to explore their capabilities. First, we will measure the similarity between the title and description from the film table of the Sakila database.

Instructions
100 XP
Select the film title and description.
Calculate the similarity between the title and description.
*/
-- Select the title and description columns
SELECT 
  title, 
  description, 
  -- Calculate the similarity
  similarity(title, description)
FROM 
  film;
-------------------------------------------------------
query result
film
title	description	similarity
BEACH HEARTBREAKERS	A Fateful Display of a Womanizer And a Mad Scientist who must Outgun a A Shark in Soviet Georgia	0
BEAST HUNCHBACK	A Awe-Inspiring Epistle of a Student And a Squirrel who must Defeat a Boy in Ancient China	0.022222223
BEDAZZLED MARRIED	A Astounding Character Study of a Madman And a Robot who must Meet a Mad Scientist in An Abandoned Fun House	0.029126214
BEHAVIOR RUNAWAY	A Unbelieveable Drama of a Student And a Husband who must Outrace a Sumo Wrestler in Berlin	0.021276595
BETRAYED REAR	A Emotional Character Study of a Boat And a Pioneer who must Find a Explorer in A Shark Tank	0.011111111
BILKO ANONYMOUS	A Emotional Reflection of a Teacher And a Man who must Meet a Cat in The First Manned Space Station	0.021276595
BIRDCAGE CASPER	A Fast-Paced Saga of a Frisbee And a Astronaut who must Overcome a Feminist in Ancient India	0
