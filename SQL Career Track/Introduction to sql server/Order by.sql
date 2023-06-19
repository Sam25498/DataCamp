--Select description and event_date from grid. Your query should return the first 5 rows, ordered by event_date
-- Select the first 5 rows from the specified columns
SELECT 
  TOP (5) description , 
  event_date 
FROM 
  grid 
  -- Order your results by the event_date column
ORDER BY
  event_date;
 
 --------------------------------------------------------------
 
query result
grid
description	event_date
Electrical Fault at Generator	2011-01-11
Winter Storm	2011-01-12
Firm System Load Shed	2011-01-13
Vandalism	2011-01-18
Vandalism	2011-01-23
