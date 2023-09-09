/*
Rats!
Requests in category "Rodents- Rats" average over 64 days to resolve. Why?

Investigate in 4 steps:

Why is the average so high? Check the distribution of completion times. Hint: date_trunc() can be used on intervals.

See how excluding outliers influences average completion times.

Do requests made in busy months take longer to complete? Check the correlation between the average completion time and requests per month.

Compare the number of requests created per month to the number completed.

Remember: the time to resolve, or completion time, is date_completed - date_created.

Instructions 1/4
25 XP
1
Use date_trunc() to examine the distribution of rat request completion times by number of days.

Take Hint (-7 XP)
2
Compute average completion time per category excluding the longest 5% of requests (outliers).
3
Get corr() between avg. completion time and monthly requests. EXTRACT(epoch FROM interval) returns seconds in interval.
4
Select the number of requests created and number of requests completed per month.*/
-- Truncate the time to complete requests to the day
SELECT date_trunc('day',date_completed - date_created) AS completion_time,
-- Count requests with each truncated time
       count(date_created)
  FROM evanston311
-- Where category is rats
 WHERE category = 'Rodents- Rats'
-- Group and order by the variable of interest
 GROUP BY completion_time
 ORDER BY completion_time;
-----------------------------------------------------
query result
evanston311
completion_time	count
0:00:00	73
1 day, 0:00:00	17
2 days, 0:00:00	23
3 days, 0:00:00	11
4 days, 0:00:00	6
5 days, 0:00:00	6
6 days, 0:00:00	5
---------------------------------------------------
SELECT category, 
       -- Compute average completion time per category
       avg(date_completed - date_created) AS avg_completion_time
  FROM evanston311
-- Where completion time is less than the 95th percentile value
 WHERE date_completed - date_created < 
-- Compute the 95th percentile of completion time in a subquery
         (SELECT percentile_disc(0.95) WITHIN GROUP (ORDER BY date_completed - date_created)
            FROM evanston311)
 GROUP BY category
-- Order the results
 ORDER BY avg_completion_time DESC;
--------------------------------------------------------
query result
evanston311
category	avg_completion_time
Trash Cart - Downsize, Upsize or Remove	12 days, 17:47:50.586912
Sanitation Billing Questions	12 days, 11:13:25.888889
THIS REQUEST IS INACTIVE...Trash Cart - Compost Bin	12 days, 6:32:42.024390
Trash, Recycling, Yard Waste Cart- Repair/Replacement	11 days, 18:48:27.488108
Rodents- Rats	11 days, 8:58:00.840849
Landmark Building Plaque or Nomination	11 days, 5:11:11.666667
Notice of Violation	10 days, 19:28:49.142858
----------------------------------------------------------
-- Compute correlation (corr) between 
-- avg_completion time and count from the subquery
SELECT corr(avg_completion, count)
  -- Convert date_created to its month with date_trunc
  FROM (SELECT date_trunc('month', date_created) AS month, 
               -- Compute average completion time in number of seconds           
               AVG(EXTRACT(epoch FROM date_completed - date_created)) AS avg_completion, 
               -- Count requests per month
               count(*) AS count
          FROM evanston311
         -- Limit to rodents
         WHERE category='Rodents- Rats' 
         -- Group by month, created above
         GROUP BY month) 
         -- Required alias for subquery 
         AS monthly_avgs;
----------------------------------------------------------
query result
evanston311
corr
0.23199855213424334
------------------------------------------------------------
--Select the number of requests created and number of requests completed per mont
-- Compute monthly counts of requests created
WITH created AS (
       SELECT date_trunc('month',date_created) AS month,
              count(*) AS created_count
         FROM evanston311
        WHERE category='Rodents- Rats'
        GROUP BY month),
-- Compute monthly counts of requests completed
      completed AS (
       SELECT date_trunc('month',date_completed) AS month,
              count(*) AS completed_count
         FROM evanston311
        WHERE category='Rodents- Rats'
        GROUP BY month)
-- Join monthly created and completed counts
SELECT created.month, 
     created_count,
       completed_count
       
     
  FROM created
       INNER JOIN completed
       ON created.month=completed.month
 ORDER BY created.month;
------------------------------------------------------
query result
evanston311
month	created_count	completed_count
2016-01-01 00:00:00+01:00	10	1
2016-02-01 00:00:00+01:00	22	11
2016-03-01 00:00:00+01:00	31	14
2016-04-01 00:00:00+02:00	36	16
2016-05-01 00:00:00+02:00	40	19
2016-06-01 00:00:00+02:00	41	49
2016-07-01 00:00:00+02:00	80	47
