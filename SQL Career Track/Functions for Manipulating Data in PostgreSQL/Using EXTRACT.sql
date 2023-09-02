/*Using EXTRACT
You can use EXTRACT() and DATE_PART() to easily create new fields in your queries by extracting sub-fields from a source timestamp field.

Now suppose you want to produce a predictive model that will help forecast DVD rental activity by day of the week. You could use the EXTRACT() function with the dow field identifier in our query to create a new field called dayofweek as a sub-field of the rental_date column from the rental table.

You can COUNT() the number of records in the rental table for a given date range and aggregate by the newly created dayofweek column.

Instructions 1/2
50 XP
1
2
Get the day of the week from the rental_date column.*/
SELECT 
  -- Extract day of week from rental_date
  EXTRACT(dow FROM rental_date) AS dayofweek 
FROM rental 
LIMIT 100;
-------------------------
query result
rental
dayofweek
2
2
2
2
2
2
2
----------------------------------
--Count the total number of rentals by day of the week.
-- Extract day of week from rental_date
SELECT 
  EXTRACT(dow FROM rental_date) AS dayofweek, 
  -- Count the number of rentals
  COUNT(rental_date) as rentals 
FROM rental 
GROUP BY 1;
----------------------------------
query result
rental
dayofweek	rentals
0	2320
6	2311
1	2247
2	2463
3	2231
5	2272
4	2200
