/*
Combining functions for string manipulation
In the next example, we are going to break apart the email column from the customer table into three new derived fields. Parsing a single column into multiple columns can be useful when you need to work with certain subsets of data. Email addresses have embedded information stored in them that can be parsed out to derive additional information about our data. For example, we can use the techniques we learned about in the video to determine how many of our customers use an email from a specific domain.

Instructions
100 XP
Extract the characters to the left of the @ of the email column in the customer table and alias it as username.
Now use SUBSTRING to extract the characters after the @ of the email column and alias the new derived field as domain.
*/
123456
SELECT
  -- Extract the characters to the left of the '@'
  LEFT(email, POSITION('@' IN email)-1) AS username,
  -- Extract the characters to the right of the '@'
  SUBSTRING(email FROM POSITION('@' IN email)+1 FOR CHAR_LENGTH(email)) AS domain
FROM customer;
------------------------------------------------------
query result
customer
username	domain
MARY.SMITH	sakilacustomer.org
PATRICIA.JOHNSON	sakilacustomer.org
LINDA.WILLIAMS	sakilacustomer.org
BARBARA.JONES	sakilacustomer.org
ELIZABETH.BROWN	sakilacustomer.org
JENNIFER.DAVIS	sakilacustomer.org
