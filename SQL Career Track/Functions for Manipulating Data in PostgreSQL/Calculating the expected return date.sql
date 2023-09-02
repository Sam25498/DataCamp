/*Calculating the expected return date
So now that you've practiced how to add and subtract timestamps and perform relative calculations using intervals, let's use those new skills to calculate the actual expected return date of a specific rental. As you've seen in previous exercises, the rental_duration is the number of days allowed for a rental before it's considered late. To calculate the expected_return_date you will want to use the rental_duration and add it to the rental_date.

Instructions
100 XP
Convert rental_duration by multiplying it with a 1-day INTERVAL.
Add it to the rental date.*/

SELECT
    f.title,
	r.rental_date,
    f.rental_duration,
    -- Add the rental duration to the rental date
    INTERVAL '1' day * f.rental_duration + r.rental_date AS expected_return_date,
    r.return_date
FROM film AS f
    INNER JOIN inventory AS i ON f.film_id = i.film_id
    INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
ORDER BY f.title;
----------------------------------------------------
query result
rental
inventory
film
title	rental_date	rental_duration	expected_return_date	return_date
ACE GOLDFINGER	2005-08-17 09:33:02	3	2005-08-20 09:33:02	2005-08-24 05:03:02
ACE GOLDFINGER	2006-02-14 15:16:03	3	2006-02-17 15:16:03	null
ACE GOLDFINGER	2005-07-28 05:04:47	3	2005-07-31 05:04:47	2005-08-05 05:12:47
ACE GOLDFINGER	2005-07-07 19:46:51	3	2005-07-10 19:46:51	2005-07-08 21:55:51
ACE GOLDFINGER	2005-08-02 04:41:17	3	2005-08-05 04:41:17	2005-08-09 02:13:17
ACE GOLDFINGER	2005-08-22 16:59:05	3	2005-08-25 16:59:05	2005-08-30 17:01:05
ACE GOLDFINGER	2005-08-01 04:24:47	3	2005-08-04 04:24:47	2005-08-04 05:36:47
