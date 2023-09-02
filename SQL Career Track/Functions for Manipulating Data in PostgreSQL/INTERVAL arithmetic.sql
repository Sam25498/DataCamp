/*INTERVAL arithmetic
If you were running a real DVD Rental store, there would be times when you would need to determine what film titles were currently out for rental with customers. In the previous exercise, we saw that some of the records in the results had a NULL value for the return_date. This is because the rental was still outstanding.

Each rental in the film table has an associated rental_duration column which represents the number of days that a DVD can be rented by a customer before it is considered late. In this example, you will exclude films that have a NULL value for the return_date and also convert the rental_duration to an INTERVAL type. Here's a reminder of one method for performing this conversion.

SELECT INTERVAL '1' day * timestamp '2019-04-10 12:34:56'
Instructions
100 XP
Convert rental_duration by multiplying it with a 1 day INTERVAL
Subtract the rental_date from the return_date to calculate the number of days_rented.
Exclude rentals with a NULL value for return_date.*/

SELECT
	f.title,
 	-- Convert the rental_duration to an interval
    INTERVAL '1' day * f.rental_duration,
 	-- Calculate the days rented as we did previously
    r.return_date - r.rental_date AS days_rented
FROM film AS f
    INNER JOIN inventory AS i ON f.film_id = i.film_id
    INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
-- Filter the query to exclude outstanding rentals
WHERE r.return_date IS NOT NULL
ORDER BY f.title;
--------------------------------------------------------------
query result
rental
inventory
film
title	?column?	days_rented
ACE GOLDFINGER	3 days, 0:00:00	3 days, 1:12:00
ACE GOLDFINGER	3 days, 0:00:00	8 days, 0:02:00
ACE GOLDFINGER	3 days, 0:00:00	6 days, 19:30:00
ACE GOLDFINGER	3 days, 0:00:00	6 days, 21:32:00
ACE GOLDFINGER	3 days, 0:00:00	1 day, 2:09:00
ACE GOLDFINGER	3 days, 0:00:00	8 days, 0:08:00
ADAPTATION HOLES	7 days, 0:00:00	3 days, 0:58:00
