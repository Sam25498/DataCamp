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
