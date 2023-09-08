/*
When working with timestamps, sometimes you want to find all observations on a given day. However, if you specify only a date in a comparison, you may get unexpected results. This query:

SELECT count(*) 
  FROM evanston311
 WHERE date_created = '2018-01-02';
returns 0, even though there were 49 requests on January 2, 2018.

This is because dates are automatically converted to timestamps when compared to a timestamp. The time fields are all set to zero:

SELECT '2018-01-02'::timestamp;
 2018-01-02 00:00:00
When working with both timestamps and dates, you'll need to keep this in mind.

Instructions 1/3
35 XP
1
Count the number of Evanston 311 requests created on January 31, 2017 by casting date_created to a date.*/
-- Count requests created on January 31, 2017
SELECT count(*) 
  FROM evanston311
 WHERE date_created::date = '2017-01-31';
-------------------------------------
count
45
-----------------------------------------
--Count the number of Evanston 311 requests created on February 29, 2016 by using >= and < operators.
-- Count requests created on February 29, 2016
SELECT count(*)
  FROM evanston311 
 WHERE date_created >= '2016-02-29' 
   AND date_created < '2016-03-01' ;
---------------------------------------------
count
58
--------------------------------------------
--Count the number of requests created on March 13, 2017.
--Specify the upper bound by adding 1 to the lower bound.
-- Count requests created on March 13, 2017
SELECT count(*)
  FROM evanston311
 WHERE date_created >= '2017-03-13'
   AND date_created < '2017-03-13'::date + 1;
-----------------------------------------------
count
33
