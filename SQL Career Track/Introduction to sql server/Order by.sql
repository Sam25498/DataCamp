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

---------------------------------------------------
-- Select the top 20 rows from description, nerc_region and event_date
SELECT 
  TOP (20) description,
  nerc_region,
  event_date
FROM 
  grid 
  -- Order by nerc_region, affected_customers & event_date
  -- Event_date should be in descending order
ORDER BY
  nerc_region,
  affected_customers,
  event_date DESC;
  
  -------------------------------------------------
  query result
grid
description	nerc_region	event_date
Suspected Physical Attack	ERCOT	2014-06-12
Fuel Supply Emergency  Coal	ERCOT	2014-06-06
Physical Attack  Vandalism	ERCOT	2014-06-03
Suspected Physical Attack	FRCC	2013-03-18
Load Shed of 100+ MW Under Emergency Operational Policy	FRCC	2013-06-17
Firm System Load Shed	FRCC	2011-01-13
