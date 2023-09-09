/*Date truncation
Unlike date_part() or EXTRACT(), date_trunc() keeps date/time units larger than the field you specify as part of the date. So instead of just extracting one component of a timestamp, date_trunc() returns the specified unit and all larger ones as well.

Recall the syntax:

date_trunc('field', timestamp)
Using date_trunc(), find the average number of Evanston 311 requests created per day for each month of the data. Ignore days with no requests when taking the average.

Instructions
100 XP
Write a subquery to count the number of requests created per day.
Select the month and average count per month from the daily_count subquery.
*/
-- Aggregate daily counts by month
SELECT date_trunc('month', day) AS month,
       avg(count)
  -- Subquery to compute daily counts
  FROM (SELECT date_trunc('day', date_created) AS day,
               count(*) AS count
          FROM evanston311
         GROUP BY day) AS daily_count
 GROUP BY month
 ORDER BY month;
-----------------------------------------
query result
evanston311
month	avg
2016-01-01 00:00:00+01:00	23.4838709677419355
2016-02-01 00:00:00+01:00	30.7586206896551724
2016-03-01 00:00:00+01:00	35.5483870967741935
2016-04-01 00:00:00+02:00	37.3000000000000000
