/*
Date parts
The date_part() function is useful when you want to aggregate data by a unit of time across multiple larger units of time. For example, aggregating data by month across different years, or aggregating by hour across different days.

Recall that you use date_part() as:

SELECT date_part('field', timestamp);
In this exercise, you'll use date_part() to gain insights about when Evanston 311 requests are submitted and completed.*/
-- Extract the month from date_created and count requests
SELECT date_part('month', date_created) AS month, 
       count(*)
  FROM evanston311
 -- Limit the date range
 WHERE date_created >= '2016-01-01'
   AND date_created < '2018-01-01'
 -- Group by what to get monthly counts?
 GROUP BY month;
-----------------------------------
query result
evanston311
month	count
6	3403
8	3110
4	2385
3	2171
5	2674
10	2399
11	2283
-----------------------------------------
--What is the most common hour of the day for requests to be created?
-- Get the hour and count requests
SELECT date_part('hour', date_created) AS hour,
       count(*)
  FROM evanston311
 GROUP BY hour
 -- Order results to select most common
 ORDER BY count DESC
 LIMIT 1;
---------------------------------------------
query result
evanston311
hour	count
11	3960
-------------------------------------------------
--During what hours are requests usually completed? Count requests completed by hour.
--Order the results by hour.
-- Count requests completed by hour
SELECT date_part('hour', date_completed) AS hour,
       count(*)
  FROM evanston311
 GROUP BY hour
 ORDER BY hour;
--------------------------------------------------
query result
evanston311
hour	count
0	59
1	49
2	10
3	17
4	13
5	9
6	37
