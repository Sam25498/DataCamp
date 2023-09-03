/*
Determining the length of strings
Determining the number of characters in a string is something that you will use frequently when working with data in a SQL database. Many situations will require you to find the length of a string stored in your database. For example, you may need to limit the number of characters that are displayed in an application or you may need to ensure that a column in your dataset contains values that are all the same length. In this example, we are going to determine the length of the description column in the film table of the DVD Rental database.

Instructions
100 XP
Select the title and description columns from the film table.
Find the number of characters in the description column with the alias desc_len.
*/
SELECT 
  -- Select the title and description columns
  title,
  description,
  -- Determine the length of the description column
  LENGTH(description) AS desc_len
FROM film;
----------------------------------------
query result
film
title	description	desc_len
BEACH HEARTBREAKERS	A Fateful Display of a Womanizer And a Mad Scientist who must Outgun a A Shark in Soviet Georgia	96
BEAST HUNCHBACK	A Awe-Inspiring Epistle of a Student And a Squirrel who must Defeat a Boy in Ancient China	90
BEDAZZLED MARRIED	A Astounding Character Study of a Madman And a Robot who must Meet a Mad Scientist in An Abandoned Fun House	108
BEHAVIOR RUNAWAY	A Unbelieveable Drama of a Student And a Husband who must Outrace a Sumo Wrestler in Berlin	91
