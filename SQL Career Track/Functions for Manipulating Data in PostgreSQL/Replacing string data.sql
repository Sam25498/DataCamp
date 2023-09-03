/*
Replacing string data
Sometimes you will need to make sure that the data you are extracting does not contain any whitespace. There are many different approaches you can take to cleanse and prepare your data for these situations. A common technique is to replace any whitespace with an underscore.

In this example, we are going to practice finding and replacing whitespace characters in the title column of the film table using the REPLACE() function.

Instructions
100 XP
Replace all whitespace with an underscore.
*/
SELECT 
  -- Replace whitespace in the film title with an underscore
  REPLACE(title, ' ', '_') AS title
FROM film; 
------------------------------------------------
query result
film
title
BEACH_HEARTBREAKERS
BEAST_HUNCHBACK
BEDAZZLED_MARRIED
BEHAVIOR_RUNAWAY
