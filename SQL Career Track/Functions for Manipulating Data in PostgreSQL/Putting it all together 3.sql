/*
Putting it all together
In this exercise, we are going to use many of the techniques and concepts we learned throughout the course to generate a data set that we could use to predict whether the words and phrases used to describe a film have an impact on the number of rentals.

First, you need to create a tsvector from the description column in the film table. You will match against a tsquery to determine if the phrase "Astounding Drama" leads to more rentals per month. Next, create a new column using the similarity function to rank the film descriptions based on this phrase.

Instructions 1/2
50 XP
1
2
Select the title and description for all DVDs from the film table.
Perform a full-text search by converting the description to a tsvector and match it to the phrase 'Astounding & Drama' using a tsquery in the WHERE clause.*/
-- Select the title and description columns
SELECT  
  title, 
  description 
FROM 
  film
WHERE 
  -- Match "Astounding Drama" in the description
  to_tsvector(description) @@ 
  to_tsquery('Astounding & Drama');

---------------------------------------------------------------
query result
film
title	description
COWBOY DOOM	A Astounding Drama of a Boy And a Lumberjack who must Fight a Butler in A Baloon
BIKINI BORROWERS	A Astounding Drama of a Astronaut And a Cat who must Discover a Woman in The First Manned Space Station
CAMPUS REMEMBER	A Astounding Drama of a Crocodile And a Mad Cow who must Build a Robot in A Jet Boat
ENCINO ELF	A Astounding Drama of a Feminist And a Teacher who must Confront a Husband in A Baloon
GLASS DYING	A Astounding Drama of a Frisbee And a Astronaut who must Fight a Dog in Ancient Japan
------------------------------------------------------------------------------------
--Add a new column that calculates the similarity of the description with the phrase 'Astounding Drama'.
--Sort the results by the new similarity column in descending order.
SELECT 
  title, 
  description, 
  -- Calculate the similarity
  similarity(description, 'Astounding Drama')
FROM 
  film 
WHERE 
  to_tsvector(description) @@ 
  to_tsquery('Astounding & Drama') 
ORDER BY 
	similarity(description, 'Astounding Drama') DESC;
------------------------------------------------------------------
query result
film
title	description	similarity
COWBOY DOOM	A Astounding Drama of a Boy And a Lumberjack who must Fight a Butler in A Baloon	0.24637681
GLASS DYING	A Astounding Drama of a Frisbee And a Astronaut who must Fight a Dog in Ancient Japan	0.23943663
CAMPUS REMEMBER	A Astounding Drama of a Crocodile And a Mad Cow who must Build a Robot in A Jet Boat	0.2361111
ENCINO ELF	A Astounding Drama of a Feminist And a Teacher who must Confront a Husband in A Baloon	0.22972973
BIKINI BORROWERS	A Astounding Drama of a Astronaut And a Cat who must Discover a Woman in The First Manned Space Station	0.1954023
