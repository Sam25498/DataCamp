/*INTERVAL data types provide you with a very useful tool for performing arithmetic on date and time data types. For example, let's say our rental policy requires a DVD to be returned within 3 days. We can calculate the expected_return_date for a given DVD rental by adding an INTERVAL of 3 days to the rental_date from the rental table. We can then compare this result to the actual return_date to determine if the DVD was returned late.

Let's try this example in the exercise.

Instructions
100 XP
Select the rental date and return date from the rental table.
Add an INTERVAL of 3 days to the rental_date to calculate the expected return date`.

Take Hint (-30 XP)*/
SELECT
 	-- Select the rental and return dates
	rental_date,
	return_date,
 	-- Calculate the expected_return_date
	rental_date + INTERVAL '3 days' AS expected_return_date
FROM rental;
------------------------------------------------------------------------
query result
rental
rental_date	return_date	expected_return_date
2005-05-24 22:53:30	2005-05-26 22:04:30	2005-05-27 22:53:30
2005-05-24 22:54:33	2005-05-28 19:40:33	2005-05-27 22:54:33
2005-05-24 23:03:39	2005-06-01 22:12:39	2005-05-27 23:03:39
2005-05-24 23:04:41	2005-06-03 01:43:41	2005-05-27 23:04:41
2005-05-24 23:05:21	2005-06-02 04:33:21	2005-05-27 23:05:21
2005-05-24 23:08:07	2005-05-27 01:32:07	2005-05-27 23:08:07
2005-05-24 23:11:53	2005-05-29 20:34:53	2005-05-27 23:11:53
