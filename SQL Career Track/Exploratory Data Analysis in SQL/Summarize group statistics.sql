/*
Summarize group statistics
Sometimes you want to understand how a value varies across groups. For example, how does the maximum value per group vary across groups?

To find out, first summarize by group, and then compute summary statistics of the group results. One way to do this is to compute group values in a subquery, and then summarize the results of the subquery.

For this exercise, what is the standard deviation across tags in the maximum number of Stack Overflow questions per day? What about the mean, min, and max of the maximums as well?

Instructions
100 XP
Start by writing a subquery to compute the max() of question_count per tag; alias the subquery result as maxval.
Then compute the standard deviation of maxval with stddev().
Compute the min(), max(), and avg() of maxval too.*/
-- Compute standard deviation of maximum values
SELECT max(maxval),
	   -- min
       min(maxval),
       -- max
       stddev(maxval),
       -- avg
       avg(maxval)
  -- Subquery to compute max of question_count by tag
  FROM (SELECT max(question_count) AS maxval
          FROM stackoverflow
         -- Compute max by...
         GROUP BY tag) AS max_results; -- alias for subquery
-------------------------------------------------------------------------------
max	min	stddev	avg
1138658	30	176458.37952720	52652.433962264151
