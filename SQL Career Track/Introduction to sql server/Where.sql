-- Select description and event_year
SELECT 
  description, 
  event_year 
FROM 
  grid 
  -- Filter the results
WHERE 
  description = 'Vandalism';
  
  ------------------------------------
  query result
grid
description	event_year
Vandalism	2014
Vandalism	2013
Vandalism	2013
Vandalism	2013
Vandalism	2013
...
Vandalism	2011
Vandalism	2011
Vandalism	2011
Vandalism	2011
Vandalism	2011
Vandalism	2011
Showing 100 out of 115 rows

-----------------------------------------------------
-- Select the nerc_region and demand_loss_mw columns, limiting the results to those where affected_customers is greater than or equal to 500000 (500,000)
-- Select description and affected customers
SELECT 
  nerc_region, 
  demand_loss_mw 
FROM 
  grid 
  -- Retrieve rows where the event_date was the 22nd December, 2013    
WHERE 
  affected_customers >= 500000;
  ---------------------------------------------------------
  query result
grid
nerc_region	demand_loss_mw
WECC	3900
WECC	3300
WECC	9750
RFC	null
SERC	4545
SERC	4853
-----------------------------------------------------------
--Update your code to select description and affected_customers, returning records where the event_date was the 22nd December, 2013.
-- Select description and affected customers
SELECT 
  description, 
  affected_customers 
FROM 
  grid 
  -- Retrieve rows where the event_date was the 22nd December, 2013    
WHERE 
  event_date = '2013-12-22';
  ---------------------------------------------------------
  query result
grid
description	affected_customers
Severe Weather  IceSnow	59000
Severe Weather  IceSnow	50000
Severe Weather  IceSnow	140735
-------------------------------------------------------------

--Limit the results to those where the affected_customers is BETWEEN 50000 and 150000, and order in descending order of event_date.
-- Select description, affected_customers and event date
SELECT 
  description, 
  affected_customers,
  event_date
FROM 
  grid 
  -- The affected_customers column should be >= 50000 and <=150000   
WHERE 
  affected_customers BETWEEN 50000
  AND 150000 
   -- Define the order   
ORDER BY 
  event_date DESC;
  ---------------------------------------------------------
  query result
grid
description	affected_customers	event_date
Severe Weather  Thunderstorms	127000	2014-06-30
Severe Weather  Thunderstorms	120000	2014-06-30
Severe Weather  Thunderstorms	138802	2014-06-18
Severe Weather  Thunderstorms	55951	2014-06-15
Severe Weather  Thunderstorms	66383	2014-06-10
Severe Weather  Thunderstorms	65000	2014-06-07

