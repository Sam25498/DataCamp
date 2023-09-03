/*
Levenshtein distance examples
Now let's take a closer look at how we can use the levenshtein function to match strings against text data. If you recall, the levenshtein distance represents the number of edits required to convert one string to another string being compared.

In a search application or when performing data analysis on any data that contains manual user input, you will always want to account for typos or incorrect spellings. The levenshtein function provides a great method for performing this task. In this exercise, we will perform a query against the film table using a search string with a misspelling and use the results from levenshtein to determine a match. Let's check it out.

Instructions
100 XP
Select the film title and film description.
Calculate the levenshtein distance for the film title with the string JET NEIGHBOR.*/
-- Select the title and description columns
SELECT  
  title, 
  description, 
  -- Calculate the levenshtein distance
  levenshtein(title, 'JET NEIGHBOR') AS distance
FROM 
  film
ORDER BY 3
-----------------------------------------------
query result
film
title	description	distance
JET NEIGHBORS	A Amazing Display of a Lumberjack And a Teacher who must Outrace a Woman in A U-Boat	1
HILLS NEIGHBORS	A Epic Display of a Hunter And a Feminist who must Sink a Car in A U-Boat	6
BED HIGHBALL	A Astounding Panorama of a Lumberjack And a Dog who must Redeem a Woman in An Abandoned Fun House	7
WEST LION	A Intrepid Drama of a Butler And a Lumberjack who must Challenge a Database Administrator in A Manhattan Penthouse	8
EGG IGBY	A Beautiful Documentary of a Boat And a Sumo Wrestler who must Succumb a Database Administrator in The First Manned Space Station	8
JERK PAYCHECK	A Touching Character Study of a Pastry Chef And a Database Administrator who must Reach a A Shark in Ancient Japan	9
ROOTS REMEMBER	A Brilliant Drama of a Mad Cow And a Hunter who must Escape a Hunter in Berlin	9
