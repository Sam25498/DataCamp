/*Concatenating strings
In this exercise and the ones that follow, we are going to derive new fields from columns within the customer and film tables of the DVD rental database.

We'll start with the customer table and create a query to return the customers name and email address formatted such that we could use it as a "To" field in an email script or program. This format will look like the following:

Brian Piccolo <bpiccolo@datacamp.com>

In the first step of the exercise, use the || operator to do the string concatenation and in the second step, use the CONCAT() functions.

Instructions 1/2
50 XP
1
Concatenate the first_name and last_name columns separated by a single space followed by email surrounded by < and >.

Take Hint (-15 XP)
2
Now use the CONCAT() function to do the same operation as the previous step.*/
-- Concatenate the first_name and last_name and email 
-- Concatenate the first_name and last_name and email 
-- Concatenate the first_name and last_name and email 
SELECT first_name ||' '||last_name||' '||'<'||email ||'>' AS full_email 
FROM customer
-----------------------------------------------
--query result
customer
full_email
MARY SMITH <MARY.SMITH@sakilacustomer.org>
PATRICIA JOHNSON <PATRICIA.JOHNSON@sakilacustomer.org>
LINDA WILLIAMS <LINDA.WILLIAMS@sakilacustomer.org>
BARBARA JONES <BARBARA.JONES@sakilacustomer.org>
-----------------------------------------------
--Now use the CONCAT() function to do the same operation as the previous step.
-- Concatenate the first_name and last_name and email
SELECT CONCAT(first_name, ' ', last_name,  ' <', email, '>') AS full_email 
FROM customer
----------------------------------------------
query result
customer
full_email
MARY SMITH <MARY.SMITH@sakilacustomer.org>
PATRICIA JOHNSON <PATRICIA.JOHNSON@sakilacustomer.org>
LINDA WILLIAMS <LINDA.WILLIAMS@sakilacustomer.org>
BARBARA JONES <BARBARA.JONES@sakilacustomer.org>
