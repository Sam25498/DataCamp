/*
Count the categories
In this chapter, we'll be working mostly with the Evanston 311 data in table evanston311. This is data on help requests submitted to the city of Evanston, IL.

This data has several character columns. Start by examining the most frequent values in some of these columns to get familiar with the common categories.

Instructions 2/4
25 XP
How many rows does each priority level have?
2
How many distinct values of zip appear in at least 100 rows?

Take Hint (-7 XP)
3
How many distinct values of source appear in at least 100 rows?
4
Select the five most common values of street and the count of each.
*/

-- Select the count of each level of priority
SELECT priority, count(*)
  FROM evanston311
 GROUP BY priority ;
---------------------------------------
query result
evanston311
priority	count
MEDIUM	5745
NONE	30081
HIGH	88
LOW	517
-----------------------------------------------


-- Find values of zip that appear in at least 100 rows
-- Also get the count of each value
SELECT DISTINCT zip, count(*)
  FROM evanston311
 GROUP BY zip
HAVING COUNT(*) >= 100; 
------------------------------------------------
query result
evanston311
zip	count
60201	19054
60202	11165
60208	255
-------------------------------------------------------
  
-- Find values of source that appear in at least 100 rows
-- Also get the count of each value
SELECT DISTINCT source, count(*)
  FROM evanston311
 GROUP BY source
HAVING count(*) >= 100;
---------------------------------------------------
query result
evanston311
source	count
Android	444
Iframe	3670
gov.publicstuff.com	30985
iOS	1199
null	5528
---------------------------------------------
ql
123456
-- Find the 5 most common values of street and the count of each
SELECT street, count(*)
  FROM evanston311
GROUP BY street
 ORDER BY count(*) DESC
LIMIT 5;
-----------------------------
query result
evanston311
street	count
null	1699
Chicago Avenue	1440
Sherman Avenue	1276
Central Street	1211
Davis Street	1154
