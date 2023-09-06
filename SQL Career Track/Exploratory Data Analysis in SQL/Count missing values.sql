-- Select the count of the number of rows
SELECT COUNT(*)
  FROM fortune500;
------------------------------------------------------
count
500
------------------------------------------------------
-- Select the count of ticker, 
-- subtract from the total number of rows, 
-- and alias as missing
SELECT count(*) - COUNT(ticker) AS missing
  FROM fortune500;
-----------------------------------------------------
missing
32
-----------------------------------------------------
-- Select the count of profits_change, 
-- subtract from total number of rows, and alias as missing
SELECT count(*) - COUNT(profits_change) AS missing
  FROM fortune500;
----------------------------------------------------
missing
63
----------------------------------------------------
-- Select the count of industry, 
-- subtract from total number of rows, and alias as missing
SELECT count(*) - COUNT(industry) AS missing
  FROM fortune500;
----------------------------------------------------
missing
13
