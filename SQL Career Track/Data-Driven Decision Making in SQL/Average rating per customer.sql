/*
Group the data in the table renting by customer_id and report the customer_id, the average rating, the number of ratings and the number of movie rentals.
Select only customers with more than 7 movie rentals.
Order the resulting table by the average rating in ascending order.


Take Hint (-30 XP)*/
SELECT customer_id, -- Report the customer_id
      avg(rating),  -- Report the average rating per customer
      count(rating),  -- Report the number of ratings per customer
      count(renting_id)  -- Report the number of movie rentals per customer
FROM renting
GROUP BY customer_id
HAVING count(renting_id) > 7 -- Select only customers with more than 7 movie rentals
ORDER BY avg(rating) ASC; -- Order by the average rating in ascending order
------------------------------------------
query result
renting
customer_id	avg	count	count
104	6.2500000000000000	4	8
28	6.7142857142857143	7	11
111	7.0000000000000000	3	10
113	7.0000000000000000	7	15
25	7.2000000000000000	5	10
21	7.3333333333333333	6	14
92	7.5714285714285714	7	11
