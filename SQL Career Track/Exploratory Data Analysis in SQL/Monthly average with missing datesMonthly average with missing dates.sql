/*
Monthly average with missing dates
Find the average number of Evanston 311 requests created per day for each month of the data.

This time, do not ignore dates with no requests.

Instructions
100 XP
Generate a series of dates from 2016-01-01 to 2018-06-30.
Join the series to a subquery to count the number of requests created per day.
Use date_trunc() to get months from date, which has all dates, NOT day.
Use coalesce() to replace NULL count values with 0. Compute the average of this value.*/
-- generate series with all days from 2016-01-01 to 2018-06-30
WITH all_days AS 
     (SELECT generate_series('2016-01-01',
                             '2018-06-30',
                             '1 day'::interval) AS date),
     -- Subquery to compute daily counts
     daily_count AS 
     (SELECT date_trunc('day', date_created) AS day,
             count(*) AS count
        FROM evanston311
       GROUP BY day)
-- Aggregate daily counts by month using date_trunc
SELECT date_trunc('month',date) AS month,
       -- Use coalesce to replace NULL count values with 0
       avg(coalesce(count, 0)) AS average
  FROM all_days
       LEFT JOIN daily_count
       -- Joining condition
       ON all_days.date=daily_count.day
 GROUP BY month
 ORDER BY month; 
---------------------------------------------------------------
query result
evanston311
month	average
2016-01-01 00:00:00+01:00	23.4838709677419355
2016-02-01 00:00:00+01:00	30.7586206896551724
2016-03-01 00:00:00+01:00	35.5483870967741935
2016-04-01 00:00:00+02:00	37.3000000000000000
