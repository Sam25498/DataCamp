/*
Create a temp table to simplify a query
The Stack Overflow data contains daily question counts through 2018-09-25 for all tags, but each tag has a different starting date in the data.

Find out how many questions had each tag on the first date for which data for the tag is available, as well as how many questions had the tag on the last day. Also, compute the difference between these two values.

To do this, first compute the minimum date for each tag.

Then use the minimum dates to select the question_count on both the first and last day. To do this, join the temp table startdates to two different copies of the stackoverflow table: one for each column - first day and last day - aliased with different names.

Instructions 1/2
50 XP
1
2
First, create a temporary table called startdates with each tag and the min() date for the tag in stackoverflow.*/
-- To clear table if it already exists
DROP TABLE IF EXISTS startdates;

-- Create temp table syntax
CREATE TEMP TABLE startdates AS
-- Compute the minimum date for each what?
SELECT tag,
       min(date) AS mindate
  FROM stackoverflow
 -- What do you need to compute the min date for each tag?
 GROUP BY tag;
 
 -- Look at the table you created
 SELECT * 
   FROM startdates;
----------------------------------------------------------
query result
stackoverflow
tag	mindate
amazon-route53	2016-01-01
google-spreadsheet	2016-01-01
dropbox	2016-01-01
amazon-data-pipeline	2016-09-01
amazon	2016-01-01
amazon-sns	2016-09-01
ios	2016-01-01
-------------------------------------------------------------
/*oin startdates to stackoverflow twice using different table aliases.
For each tag, select mindate, question_count on the mindate, and question_count on 2018-09-25 (the max date).
Compute the change in question_count over time.*/
-- To clear table if it already exists
DROP TABLE IF EXISTS startdates;

CREATE TEMP TABLE startdates AS
SELECT tag, min(date) AS mindate
  FROM stackoverflow
 GROUP BY tag;
 
-- Select tag (Remember the table name!) and mindate
SELECT startdates.tag, 
       mindate, 
       -- Select question count on the min and max days
	   so_min.question_count AS min_date_question_count,
       so_max.question_count AS max_date_question_count,
       -- Compute the change in question_count (max- min)
       so_max.question_count - so_min.question_count AS change
  FROM startdates
       -- Join startdates to stackoverflow with alias so_min
       INNER JOIN stackoverflow AS so_min
          -- What needs to match between tables?
          ON startdates.tag = so_min.tag
         AND startdates.mindate = so_min.date
       -- Join to stackoverflow again with alias so_max
       INNER JOIN stackoverflow AS so_max
          -- Again, what needs to match between tables?
          ON startdates.tag = so_max.tag
         AND so_max.date = '2018-09-25';
------------------------------------------------------------------------
query result
stackoverflow
tag	mindate	min_date_question_count	max_date_question_count	change
paypal	2016-01-01	13296	18050	4754
amazon-elb	2016-09-01	576	1452	876
amazon-mws	2016-09-01	367	706	339
amazon-swf	2016-09-01	167	232	65
amazon-sns	2016-09-01	690	1400	710
excel	2016-01-01	81384	177603	96219
