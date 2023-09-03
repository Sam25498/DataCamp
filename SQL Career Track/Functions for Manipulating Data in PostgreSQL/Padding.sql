/*
Padding
Padding strings is useful in many real-world situations. Earlier in this course, we learned about string concatenation and how to combine the customer's first and last name separated by a single blank space and also combined the customer's full name with their email address.

The padding functions that we learned about in the video are an alternative approach to do this task. To use this approach, you will need to combine and nest functions to determine the length of a string to produce the desired result. Remember when calculating the length of a string you often need to adjust the integer returned to get the proper length or position of a string.

Let's revisit the string concatenation exercise but use padding functions.

Instructions 1/3
35 XP
1
2
3
Add a single space to the end or right of the first_name column using a padding function.
Use the || operator to concatenate the padded first_name to the last_name column.
*/
1234
-- Concatenate the padded first_name and last_name 
SELECT 
	CONCAT(RPAD(first_name, LENGTH(first_name)+1) || last_name) AS full_name
FROM customer;
-----------------------------------------------
query result
customer
full_name
MARY SMITH
PATRICIA JOHNSON
LINDA WILLIAMS
BARBARA JONES
ELIZABETH BROWN
JENNIFER DAVIS
MARIA MILLER

--------------------------------------------
--Now add a single space to the left or beginning of the last_name column using a different padding function than the first step.
--Use the || operator to concatenate the first_name column to the padded last_name.

1234
-- Concatenate the first_name and last_name 
SELECT 
	first_name || LPAD(last_name, LENGTH(last_name)+1) AS full_name
FROM customer; 
--------------------------------------------------
query result
customer
full_name
MARY SMITH
PATRICIA JOHNSON
LINDA WILLIAMS
BARBARA JONES
ELIZABETH BROWN
JENNIFER DAVIS
MARIA MILLER
-----------------------------------------------------
--Add a single space to the right or end of the first_name column.
--Add the characters < to the right or end of last_name column.
--Finally, add the characters > to the right or end of the email column.
123456
-- Concatenate the first_name and last_name 
SELECT 
	RPAD(first_name, LENGTH(first_name)+1) 
    || RPAD(last_name, LENGTH(last_name)+2, ' <') 
    || RPAD(email, LENGTH(email)+1, '>') AS full_email
FROM customer; 
---------------------------------------------------
query result
customer
full_email
MARY SMITH <MARY.SMITH@sakilacustomer.org>
PATRICIA JOHNSON <PATRICIA.JOHNSON@sakilacustomer.org>
LINDA WILLIAMS <LINDA.WILLIAMS@sakilacustomer.org>
BARBARA JONES <BARBARA.JONES@sakilacustomer.org>
ELIZABETH BROWN <ELIZABETH.BROWN@sakilacustomer.org>
JENNIFER DAVIS <JENNIFER.DAVIS@sakilacustomer.org>
MARIA MILLER <MARIA.MILLER@sakilacustomer.org>
