/*Putting it all together
In this exercise, we are going to use the film and category tables to create a new field called film_category by concatenating the category name with the film's title. You will also practice how to truncate text fields like the film table's description column without cutting off a word.

To accomplish this we will use the REVERSE() function to help determine the position of the last whitespace character in the description before we reach 50 characters. This technique can be used to determine the position of the last character that you want to truncate and ensure that it is less than or equal to 50 characters AND does not cut off a word.

This is an advanced technique but I know you can do it! Let's dive in.

Instructions
100 XP
Get the first 50 characters of the description column
Determine the position of the last whitespace character of the truncated description column and subtract it from the number 50 as the second parameter in the first function above.*/

SELECT 
  UPPER(c.name) || ': ' || f.title AS film_category, 
  -- Truncate the description without cutting off a word
  LEFT(description, 50 - 
    -- Subtract the position of the first whitespace character
    POSITION(
      ' ' IN REVERSE(LEFT(description, 50))
    )
  ) 
FROM 
  film AS f 
  INNER JOIN film_category AS fc 
  	ON f.film_id = fc.film_id 
  INNER JOIN category AS c 
  	ON fc.category_id = c.category_id;
-----------------------------------------------------------------

query result
film
film_category
category
film_category	left
ACTION: WEREWOLF LOLA	A Fanciful Story of a Man And a Sumo Wrestler who
ACTION: WATERFRONT DELIVERANCE	A Unbelieveable Documentary of a Dentist And a
ACTION: UPRISING UPTOWN	A Fanciful Reflection of a Boy And a Butler who
ACTION: TRUMAN CRAZY	A Thrilling Epistle of a Moose And a Boy who must
ACTION: TRIP NEWTON	A Fanciful Character Study of a Lumberjack And a
ACTION: SUSPECTS QUILLS	A Emotional Epistle of a Pioneer And a Crocodile
ACTION: STORY SIDE	A Lacklusture Saga of a Boy And a Cat who must
