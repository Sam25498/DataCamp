/*
Summarize the distribution of numeric values
Was 2017 a good or bad year for revenue of Fortune 500 companies? Examine how revenue changed from 2016 to 2017 by first looking at the distribution of revenues_change and then counting companies whose revenue increased.
Instructions 1/3
35 XP
1
2
3
Use GROUP BY and count() to examine the values of revenues_change.
Order the results by revenues_change to see the distribution.
*/
-- Select the count of each value of revenues_change
SELECT revenues_change, COUNT(*)
 FROM fortune500
 GROUP BY revenues_change
 -- order by the values of revenues_change
 ORDER BY revenues_change;
---------------------------------------------------------------------

query result
fortune500
revenues_change	count
-57.5	1
-53.3	1
-51.4	1
-50.9	1
-45	1
-41.7	1
-38.7	1
-----------------------------------------------------------------------
--Repeat step 1, but this time, cast revenues_change as an integer to reduce the number of different values.
-- Select the count of each revenues_change integer value
SELECT revenues_change::integer, count(*)
  FROM fortune500
 GROUP BY revenues_change::integer
 -- order by the values of revenues_change
 ORDER BY revenues_change;
------------------------------------------------------------------------
query result
fortune500
revenues_change	count
-58	1
-53	1
-51	2
-45	1
-42	1
-39	1
-38	2
-----------------------------------------------------------------------
--How many of the Fortune 500 companies had revenues increase in 2017 compared to 2016? To find out, count the rows of fortune500 where revenues_change indicates an increase.
-- Count rows 
SELECT count(*)
  FROM fortune500
 -- Where...
 WHERE revenues_change > 0;
-------------------------------------------------------------------
--query result
fortune500
count
298
