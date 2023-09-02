/*Adding and subtracting date and time values
In this exercise, you will calculate the actual number of days rented as well as the true expected_return_date by using the rental_duration column from the film table along with the familiar rental_date from the rental table.

This will require that you dust off the skills you learned from prior courses on how to join two or more tables together. To select columns from both the film and rental tables in a single query, we'll need to use the inventory table to join these two tables together since there is no explicit relationship between them. Let's give it a try!

Instructions 1/2
50 XP
1
Subtract the rental_date from the return_date to calculate the number of days_rented.

Take Hint (-15 XP)
2
Now use the AGE() function to calculate the days_rented*/
SELECT f.title, f.rental_duration,
    -- Calculate the number of days rented
    r.return_date - r.rental_date AS days_rented
FROM film AS f
     INNER JOIN inventory AS i ON f.film_id = i.film_id
     INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
ORDER BY f.title;
------------------------------------------------
query result
rental
inventory
film
title	rental_duration	days_rented
ACE GOLDFINGER	3	6 days, 19:30:00
ACE GOLDFINGER	3	null
ACE GOLDFINGER	3	8 days, 0:08:00
ACE GOLDFINGER	3	1 day, 2:09:00
ACE GOLDFINGER	3	6 days, 21:32:00
ACE GOLDFINGER	3	8 days, 0:02:00
ACE GOLDFINGER	3	3 days, 1:12:00
------------------------------------------------

--Now use the AGE() function to calculate the days_rented.
SELECT f.title, f.rental_duration,
    -- Calculate the number of days rented
	AGE(r.return_date, r.rental_date) AS days_rented
FROM film AS f
	INNER JOIN inventory AS i ON f.film_id = i.film_id
	INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
ORDER BY f.title;
-----------------------------------------------------------
query result
rental
inventory
film
title	rental_duration	days_rented
ACE GOLDFINGER	3	6 days, 19:30:00
ACE GOLDFINGER	3	null
ACE GOLDFINGER	3	8 days, 0:08:00
ACE GOLDFINGER	3	1 day, 2:09:00
ACE GOLDFINGER	3	6 days, 21:32:00
ACE GOLDFINGER	3	8 days, 0:02:00
ACE GOLDFINGER	3	3 days, 1:12:00
