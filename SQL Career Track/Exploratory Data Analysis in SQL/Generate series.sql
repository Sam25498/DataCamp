/*
Generate series
Summarize the distribution of the number of questions with the tag "dropbox" on Stack Overflow per day by binning the data.

Recall:

generate_series(from, to, step)
You can reference the slides using the PDF icon in the upper right corner of the screen.

Instructions 1/3
35 XP
1
2
3
Start by selecting the minimum and maximum of the question_count column for the tag 'dropbox' so you know the range of values to cover with the bins.
*/
-- Select the min and max of question_count
SELECT min(question_count), 
       max(question_count)
  -- From what table?
  FROM stackoverflow
 -- For tag dropbox
 WHERE tag = 'dropbox';
------------------------------------------------------------
query result
stackoverflow
min	max
2315	3072
/*
Next, use generate_series() to create bins of size 50 from 2200 to 3100.

To do this, you need an upper and lower bound to define a bin.

This will require you to modify the stopping value of the lower bound and the starting value of the upper bound by the bin width.
*/
-- Create lower and upper bounds of bins
SELECT generate_series(2200, 3050, 50) AS lower,
       generate_series(2250, 3100, 50) AS upper;
---------------------------------------------------------------

query result
stackoverflow
lower	upper
2200	2250
2250	2300
2300	2350
2350	2400
2400	2450
2450	2500
2500	2550
--------------------------------------------------------------------
/*
Select lower and upper from bins, along with the count of values within each bin bounds.

To do this, you'll need to join 'dropbox', which contains the question_count for tag "dropbox", to the bins created by generate_series().

The join should occur where the count is greater than or equal to the lower bound, and strictly less than the upper bound.
*/
-- Bins created in Step 2
WITH bins AS (
      SELECT generate_series(2200, 3050, 50) AS lower,
             generate_series(2250, 3100, 50) AS upper),
     -- Subset stackoverflow to just tag dropbox (Step 1)
     dropbox AS (
      SELECT question_count 
        FROM stackoverflow
       WHERE tag='dropbox') 
-- Select columns for result
-- What column are you counting to summarize?
SELECT lower, upper, count(question_count) 
  FROM bins  -- Created above
       -- Join to dropbox (created above), 
       -- keeping all rows from the bins table in the join
       LEFT JOIN dropbox
       -- Compare question_count to lower and upper
         ON question_count >= lower 
        AND question_count < upper
 -- Group by lower and upper to count values in each bin
 GROUP BY lower, upper
 -- Order by lower to put bins in order
 ORDER BY lower;
----------------------------------------------------------------
query result
stackoverflow
lower	upper	count
2200	2250	0
2250	2300	0
2300	2350	22
2350	2400	39
2400	2450	54
2450	2500	53
2500	2550	45
