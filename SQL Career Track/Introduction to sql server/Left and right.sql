-- Retrieve the first 25 characters from the description column in the grid table. Name the results first_25_left.
-- Select the first 25 characters from the left of the description column
SELECT 
  LEFT(description, 25) AS first_25_left 
FROM 
  grid;
------------------------------------
query result
grid
first_25_left
Severe Weather  Thunderst
Severe Weather  Thunderst
Fuel Supply Emergency  Co
Physical Attack  Vandalis
Physical Attack  Vandalis
Physical Attack  Vandalis
...
Public Appeal due to Seve
Public Appeal due to Seve
Physical Attack  Vandalis
Physical Attack  Vandalis
Suspected Physical Attack
Showing 100 out of 806 rows
------------------------------------------------------------------------------
--Amend the query to retrieve the last 25 characters from the description. Name the results last_25_right.
-- Amend the query to select 25 characters from the  right of the description column
SELECT 
  RIGHT(description, 25) AS last_25_right
FROM 
  grid;
-------------------------------------------------------------------
query result
grid
last_25_right
ather  Thunderstorms
ather  Thunderstorms
pply Emergency  Coal
al Attack  Vandalism
al Attack  Vandalism
...
al Attack  Vandalism
Severe Weather  Cold
Severe Weather  Cold
Severe Weather  Cold
al Attack  Vandalism
al Attack  Vandalism
