/*The DATE_TRUNC() function will truncate timestamp or interval data types to return a timestamp or interval at a specified precision. The precision values are a subset of the field identifiers that can be used with the EXTRACT() and DATE_PART() functions. DATE_TRUNC() will return an interval or timestamp rather than a number. For example

SELECT DATE_TRUNC('month', TIMESTAMP '2005-05-21 15:30:30');
Result: 2005-05-01 00;00:00

Now, let's experiment with different precisions and ultimately modify the queries from the previous exercises to aggregate rental activity.

Instructions 1/4
25 XP
1
Truncate the rental_date field by year.


Take Hint (-7 XP)
2
Now modify the previous query to truncate the rental_date by month.

3
Let's see what happens when we truncate by day of the month.

4
Finally, count the total number of rentals by rental_day and alias it as rentals.*/
-- Truncate rental_date by year
SELECT DATE_TRUNC('year', rental_date) AS rental_year
FROM rental;
------------------------------------
query result
rental
rental_year
2005-01-01 00:00:00
2005-01-01 00:00:00
2005-01-01 00:00:00
2005-01-01 00:00:00
2005-01-01 00:00:00
2005-01-01 00:00:00
2005-01-01 00:00:00
----------------------------------
-- Truncate rental_date by month
SELECT DATE_TRUNC('month', rental_date) AS rental_month
FROM rental;
------------------------------------

query.sql
123
-- Truncate rental_date by month
SELECT DATE_TRUNC('month', rental_date) AS rental_month
FROM rental;
query result
rental
rental_month
2005-05-01 00:00:00
2005-05-01 00:00:00
2005-05-01 00:00:00
2005-05-01 00:00:00
2005-05-01 00:00:00
2005-05-01 00:00:00
2005-05-01 00:00:00
----------------------------------
-- Truncate rental_date by day of the month 
SELECT DATE_TRUNC('day', rental_date) AS rental_day 
FROM rental;
-------------------------------
--query result
rental
rental_day
2005-05-24 00:00:00
2005-05-24 00:00:00
2005-05-24 00:00:00
2005-05-24 00:00:00
2005-05-24 00:00:00
2005-05-24 00:00:00
2005-05-24 00:00:00
----------------------------------------------------

SELECT 
  DATE_TRUNC('day', rental_date) AS rental_day,
  -- Count total number of rentals 
  COUNT(rental_date) AS rentals
FROM rental
GROUP BY 1;
------------------------------------------------------
query result
rental
rental_day	rentals
2005-05-28 00:00:00	196
2005-05-25 00:00:00	137
2005-05-29 00:00:00	154
2005-08-16 00:00:00	23
2005-05-31 00:00:00	163
2005-07-11 00:00:00	461
2005-07-10 00:00:00	480

