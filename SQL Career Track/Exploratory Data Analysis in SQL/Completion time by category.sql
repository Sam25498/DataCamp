/*
Completion time by category
The evanston311 data includes a date_created timestamp from when each request was created and a date_completed timestamp for when it was completed. The difference between these tells us how long a request was open.

Which category of Evanston 311 requests takes the longest to complete?

Instructions
100 XP
Compute the average difference between the completion timestamp and the creation timestamp by category.
Order the results with the largest average time to complete the request first.*/
-- Select the category and the average completion time by category
SELECT category, 
       avg(date_completed - date_created) AS completion_time
  FROM evanston311
 GROUP BY category
-- Order the results
 ORDER BY completion_time DESC;
-------------------------------------------------------

query.sql
1234567
-- Select the category and the average completion time by category
SELECT category, 
       avg(date_completed - date_created) AS completion_time
  FROM evanston311
 GROUP BY category
-- Order the results
 ORDER BY completion_time DESC;
query result
evanston311
category	completion_time
Rodents- Rats	64 days, 10:58:23.000766
Fire Prevention - Public Education	34 days, 16:48:10
Key Request - All  City Employees	32 days, 0:52:11
Smoking	27 days, 7:42:30.238095
Notice of Violation	24 days, 5:41:12.666667
Exterior Conditions	23 days, 22:18:31.087719
General/Routine Maintenance - Facilities Management	23 days, 3:01:56.480000
