---Use TOP to change the existing query so that only the first 50 rows are returned

-- Limit the number of rows returned
SELECT 
  TOP (50) points 
FROM 
  eurovision;

--Return a list of unique countries using DISTINCT. Give the results an alias of unique_country.
-- Return unique countries and use an alias
SELECT 
  DISTINCT country AS unique_country 
FROM 
  eurovision;
