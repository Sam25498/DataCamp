-- Subtract the min date_created from the max
SELECT max(date_created)- min(date_created)
  FROM evanston311;
------------------------------
query result
evanston311
?column?
911 days, 16:33:39
----------------------------
--Using now(), find out how old the most recent evanston311 request was created.
-- How old is the most recent request?
SELECT now() - max(date_created) AS oldest
  FROM evanston311;
-----------------------------------
query result
evanston311
oldest
1896 days, 6:26:18.260884
---------------------------------
-- Add 100 days to the current timestamp
SELECT now() + '100 days'::interval;
--------------------------------
?column?
2023-12-18 01:06:16.626720+01:00
--------------------------------
-- Select the current timestamp, 
-- and the current timestamp + 5 minutes
SELECT now(), now() + '5 minutes'::interval;
---------------------------------------------
query result
evanston311
now	?column?
2023-09-09 01:07:34.741113+02:00	2023-09-09 01:12:34.741113+02:00
