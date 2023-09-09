/*
Find the median number of Evanston 311 requests per day in each six month period from 2016-01-01 to 2018-06-30. Build the query following the three steps below.

Recall that to aggregate data by non-standard date/time intervals, such as six months, you can use generate_series() to create bins with lower and upper bounds of time, and then summarize observations that fall in each bin.

Remember: you can access the slides with an example of this type of query using the PDF icon link in the upper right corner of the screen.

Instructions 1/3
35 XP
1
2
3
Use generate_series() to create bins of 6 month intervals. Recall that the upper bin values are exclusive, so the values need to be one day greater than the last day to be included in the bin.

Notice how in the sample code, the first bin value of the upper bound is July 1st, and not June 30th.
Use the same approach when creating the last bin values of the lower and upper bounds (i.e. for 2018).*/
-- Generate 6 month bins covering 2016-01-01 to 2018-06-30

-- Create lower bounds of bins
SELECT generate_series('2016-01-01',  -- First bin lower value
                       '2018-06-30',  -- Last bin lower value
                       '6 months'::interval) AS lower,
-- Create upper bounds of bins
       generate_series('2016-07-01',  -- First bin upper value
                       '2018-07-01',  -- Last bin upper value
                       '6 months'::interval) AS upper;
---------------------------------------------------------------
/*
Count the number of requests created per day. Remember to not count *, or you will risk counting NULL values.

Include days with no requests by joining evanston311 to a daily series from 2016-01-01 to 2018-06-30.

- Note that because we are not generating bins, you can use June 30th as your series end date.*/
query result
evanston311
lower	upper
2016-01-01 00:00:00+01:00	2016-07-01 00:00:00+02:00
2016-07-01 00:00:00+02:00	2017-01-01 00:00:00+01:00
2017-01-01 00:00:00+01:00	2017-07-01 00:00:00+02:00
2017-07-01 00:00:00+02:00	2018-01-01 00:00:00+01:00
-------------------------------------------------------------------
-- Count number of requests made per day
SELECT day, count(date_created) AS count
-- Use a daily series from 2016-01-01 to 2018-06-30 
-- to include days with no requests
  FROM (SELECT generate_series('2016-01-01',  -- series start date
                               '2018-06-30',  -- series end date
                               '1 day'::interval)::date AS day) AS daily_series
       LEFT JOIN evanston311
       -- match day from above (which is a date) to date_created
       ON day = date_created::date
 GROUP BY day;-- Count number of requests made per day
SELECT day, count(day) AS count
-- Use a daily series from 2016-01-01 to 2018-06-30 
-- to include days with no requests
  FROM (SELECT generate_series('2016-01-01',  -- series start date
                               '2018-06-30',  -- series end date
                               '1 day'::interval)::date AS day) AS daily_series
       LEFT JOIN evanston311
       -- match day from above (which is a date) to date_created
       ON day = date_created::date
 GROUP BY day;
---------------------------------------------------------------------
--query result
evanston311
day	count
2016-01-01	5
2016-01-02	27
2016-01-03	7
2016-01-04	56
2016-01-05	33
2016-01-06	44
2016-01-07	35
2016-01-08	29
2016-01-09	17
2016-01-10	1
2016-01-11	37
2016-01-12	48
2016-01-13	20
2016-01-14	24
2016-01-15	19
2016-01-16	11
2016-01-17	2
2016-01-18	15
2016-01-19	29
-------------------------------------------------------
/*
Assign each daily count to a single 6 month bin by joining bins to daily_counts.
Compute the median value per bin using percentile_disc().*/
-- Bins from Step 1
WITH bins AS (
	 SELECT generate_series('2016-01-01',
                            '2018-01-01',
                            '6 months'::interval) AS lower,
            generate_series('2016-07-01',
                            '2018-07-01',
                            '6 months'::interval) AS upper),
-- Daily counts from Step 2
     daily_counts AS (
     SELECT day, count(date_created) AS count
       FROM (SELECT generate_series('2016-01-01',
                                    '2018-06-30',
                                    '1 day'::interval)::date AS day) AS daily_series
            LEFT JOIN evanston311
            ON day = date_created::date
      GROUP BY day)
-- Select bin bounds 
SELECT lower, 
       upper, 
       -- Compute median of count for each bin
       percentile_disc(0.5) WITHIN GROUP (ORDER BY count) AS median
  -- Join bins and daily_counts
  FROM bins
       LEFT JOIN daily_counts
       -- Where the day is between the bin bounds
       ON day >= lower
          AND day < upper
 -- Group by bin bounds
 GROUP BY lower, upper
 ORDER BY lower;-- Bins from Step 1
WITH bins AS (
	 SELECT generate_series('2016-01-01',
                            '2018-01-01',
                            '6 months'::interval) AS lower,
            generate_series('2016-07-01',
                            '2018-07-01',
                            '6 months'::interval) AS upper),
-- Daily counts from Step 2
     daily_counts AS (
     SELECT day, count(date_created) AS count
       FROM (SELECT generate_series('2016-01-01',
                                    '2018-06-30',
                                    '1 day'::interval)::date AS day) AS daily_series
            LEFT JOIN evanston311
            ON day = date_created::date
      GROUP BY day)
-- Select bin bounds 
SELECT lower, 
       upper, 
       -- Compute median of count for each bin
       percentile_disc(0.5) WITHIN GROUP (ORDER BY count) AS median
  -- Join bins and daily_counts
  FROM bins
       LEFT JOIN daily_counts
       -- Where the day is between the bin bounds
       ON day >= lower
          AND day < upper
 -- Group by bin bounds
 GROUP BY lower, upper
 ORDER BY lower;
----------------------------------------------------------
query result
evanston311
lower	upper	median
2016-01-01 00:00:00+01:00	2016-07-01 00:00:00+02:00	37
2016-07-01 00:00:00+02:00	2017-01-01 00:00:00+01:00	41
2017-01-01 00:00:00+01:00	2017-07-01 00:00:00+02:00	44
2017-07-01 00:00:00+02:00	2018-01-01 00:00:00+01:00	51
2018-01-01 00:00:00+01:00	2018-07-01 00:00:00+02:00	40
