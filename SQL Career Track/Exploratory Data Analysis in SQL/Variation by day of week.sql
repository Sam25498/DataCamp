/*
Variation by day of week
Does the time required to complete a request vary by the day of the week on which the request was created?

We can get the name of the day of the week by converting a timestamp to character data:

to_char(date_created, 'day') 
But character names for the days of the week sort in alphabetical, not chronological, order. To get the chronological order of days of the week with an integer value for each day, we can use:

EXTRACT(DOW FROM date_created)
DOW stands for "day of week."

Instructions
100 XP
Select the name of the day of the week the request was created (date_created) as day.
Select the mean time between the request completion (date_completed) and request creation as duration.
Group by day (the name of the day of the week) and the integer value for the day of the week (use a function).
Order by the integer value of the day of the week using the same function used in GROUP BY.

*/
-- Select name of the day of the week the request was created 
SELECT to_char(date_created, 'day') 
 AS day, 
       -- Select avg time between request creation and completion
       AVG(date_completed - date_created) AS duration
  FROM evanston311 
 -- Group by the name of the day of the week and 
 -- integer value of day of week the request was created
 GROUP BY day, EXTRACT(DOW FROM date_created)
 -- Order by integer value of the day of the week 
 -- the request was created
 ORDER BY EXTRACT(DOW FROM date_created);
-------------------------------------------------------
query result
evanston311
day	duration
sunday   	8 days, 23:02:01.677165
monday   	7 days, 0:47:18.215322
tuesday  	7 days, 2:36:24.417655
wednesday	7 days, 12:30:37.884480
thursday 	7 days, 10:32:22.104339
