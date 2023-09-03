/*
Changing the case of string data
Now you are going to use the film and category tables to create a new field called film_category by concatenating the category name with the film's title. You will also format the result using functions you learned about in the video to transform the case of the fields you are selecting in the query; for example, the INITCAP() function which converts a string to title case.

Instructions
100 XP
Convert the film category name to uppercase.
Convert the first letter of each word in the film's title to upper case.
Concatenate the converted category name and film title separated by a colon.
Convert the description column to lowercase.
*/
SELECT 
  -- Concatenate the category name to coverted to uppercase
  -- to the film title converted to title case
  UPPER(c.name)  || ': ' || INITCAP(f.title) AS film_category, 
  -- Convert the description column to lowercase
  LOWER(f.description) AS description
FROM 
  film AS f 
  INNER JOIN film_category AS fc 
  	ON f.film_id = fc.film_id 
  INNER JOIN category AS c 
  	ON fc.category_id = c.category_id;
------------------------------------------------
query result
film
film_category
category
film_category	description
ACTION: Werewolf Lola	a fanciful story of a man and a sumo wrestler who must outrace a student in a monastery
ACTION: Waterfront Deliverance	a unbelieveable documentary of a dentist and a technical writer who must build a womanizer in nigeria
ACTION: Uprising Uptown	a fanciful reflection of a boy and a butler who must pursue a woman in berlin
ACTION: Truman Crazy	a thrilling epistle of a moose and a boy who must meet a database administrator in a monastery
