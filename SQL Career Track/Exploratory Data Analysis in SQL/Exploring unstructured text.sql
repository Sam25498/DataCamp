/*
The description column of evanston311 has the details of the inquiry, while the category column groups inquiries into different types. How well does the category capture what's in the description?

LIKE and ILIKE queries will help you find relevant descriptions and categories. Remember that with LIKE queries, you can include a % on each side of a word to find values that contain the word. For example:

SELECT category
  FROM evanston311
 WHERE category LIKE '%Taxi%';
% matches 0 or more characters.

Building up the query through the steps below, find inquires that mention trash or garbage in the description without trash or garbage being in the category. What are the most frequent categories for such inquiries?

Instructions 1/4
25 XP
1
2
3
4
Use ILIKE to count rows in evanston311 where the description contains 'trash' or 'garbage' regardless of case.
*/
-- Count rows
SELECT count(*)
  FROM evanston311
 -- Where description includes trash or garbage
 WHERE description ILIKE '%trash%' OR description ILIKE '%garbage%';
-------------------------------------------------------------------
query result
evanston311
count
2551
-----------------------------------------------------------------
--category values are in title case. Use LIKE to find category values with 'Trash' or 'Garbage' in them
-- Select categories containing Trash or Garbage
SELECT category
  FROM evanston311
 -- Use LIKE
 WHERE category LIKE '%Trash%' OR category LIKE '%Garbage%';
-------------------------------------------------------------
query result
evanston311
category
THIS REQUEST IS INACTIVE...Trash Cart - Compost Bin
Trash - Tire Pickup
Trash - Special Pickup - Resident Use
Trash, Recycling, Yard Waste Cart- Repair/Replacement
Trash, Recycling, Yard Waste Cart- Repair/Replacement
Trash - Missed Garbage Pickup
THIS REQUEST IS INACTIVE...Trash Cart - Compost Bin
-------------------------------------------------------------------
--Count rows where the description includes 'trash' or 'garbage' but the category does not.
-- Count rows
SELECT count(*)
  FROM evanston311 
 -- description contains trash or garbage (any case)
 WHERE (description ILIKE '%trash%' OR description ILIKE '%garbage%') 
 -- category does not contain Trash or Garbage
   AND category NOT LIKE '%Trash%'
   AND category NOT LIKE '%Garbage%';
------------------------------------------------------------------
query result
evanston311
count
570
-------------------------------------------------------------------
--Find the most common categories for rows with a description about trash that don't have a trash-related category.

-- Count rows with each category
SELECT category, count(*)
  FROM evanston311 
 WHERE (description ILIKE '%trash%'
    OR description ILIKE '%garbage%') 
   AND category NOT LIKE '%Trash%'
   AND category NOT LIKE '%Garbage%'
 -- What are you counting?
 GROUP BY category
 --- order by most frequent values
 ORDER BY count(*) DESC
 LIMIT 10;
--------------------------------------------------------------------------
query result
evanston311
category	count
Ask A Question / Send A Message	273
Rodents- Rats	77
Recycling - Missed Pickup	28
Dead Animal on Public Property	16
Graffiti	15
Yard Waste - Missed Pickup	14
Public Transit Agency Issue	13
