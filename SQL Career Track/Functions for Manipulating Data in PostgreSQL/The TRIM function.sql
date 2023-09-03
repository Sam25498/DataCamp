/*
The TRIM function
In this exercise, we are going to revisit and combine a couple of exercises from earlier in this chapter. If you recall, you used the LEFT() function to truncate the description column to 50 characters but saw that some words were cut off and/or had trailing whitespace. We can use trimming functions to eliminate the whitespace at the end of the string after it's been truncated.

Instructions
100 XP
Convert the film category name to uppercase and use the CONCAT() concatenate it with the title.
Truncate the description to the first 50 characters and make sure there is no leading or trailing whitespace after truncating.
*/

-- Concatenate the uppercase category name and film title
SELECT 
  CONCAT(UPPER(c.name), ': ', f.title) AS film_category, 
  -- Truncate the description remove trailing whitespace
  TRIM(LEFT(f.description, 50)) AS film_desc
FROM 
  film AS f 
  INNER JOIN film_category AS fc 
  	ON f.film_id = fc.film_id 
  INNER JOIN category AS c 
    ON fc.category_id = c.category_id;
--------------------------------------------------------------

query result
category
film
film_category
film_category	film_desc
ACTION: WEREWOLF LOLA	A Fanciful Story of a Man And a Sumo Wrestler who
ACTION: WATERFRONT DELIVERANCE	A Unbelieveable Documentary of a Dentist And a Tec
ACTION: UPRISING UPTOWN	A Fanciful Reflection of a Boy And a Butler who mu
ACTION: TRUMAN CRAZY	A Thrilling Epistle of a Moose And a Boy who must
ACTION: TRIP NEWTON	A Fanciful Character Study of a Lumberjack And a C
ACTION: SUSPECTS QUILLS	A Emotional Epistle of a Pioneer And a Crocodile w
ACTION: STORY SIDE	A Lacklusture Saga of a Boy And a Cat who must Sin
