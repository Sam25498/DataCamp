-- Obtain a count of 'grid_id'
SELECT 
  COUNT(grid_id) AS grid_total 
FROM 
  grid;
---------------------------------------------
--query result
grid
grid_total
806
------------------------------------------------------------------------
-- Make the count more meaningful by restricting it to records where the nerc_region is 'RFC'. Name the result RFC_count.

-- Obtain a count of 'grid_id'
SELECT 
  COUNT(grid_id) AS grid_total
FROM 
  grid
-- Restrict to rows where the nerc_region is 'RFC'
WHERE
  nerc_region = 'RFC';
-----------------------------------------------------------------------

query result
grid
grid_total
246
