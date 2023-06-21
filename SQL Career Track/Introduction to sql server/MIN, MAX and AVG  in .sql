-- Find the minimum value from the affected_customers column, but only for rows where demand_loss_mw has a value. Name the result min_affected_customers.
-- Find the maximum number of affected customers
SELECT 
  MIN(affected_customers) AS min_affected_customers 
FROM 
  grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
  demand_loss_mw IS NOT NULL;
---------------------------------------------------------
query result
grid
min_affected_customers
0
---------------------------------------------------------
-- Amend the query to return the maximum value from the same column, this time aliasing as max_affected_customers.
-- Find the average number of affected customers
SELECT 
  MAX(affected_customers) AS max_affected_customers 
FROM 
  grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
  demand_loss_mw IS NOT NULL;
------------------------------------------------------------
query result
grid
max_affected_customers
4645572
----------------------------------------------------------------
--Return the average value from the affected_customers column, this time aliasing as avg_affected_customers.
-- Find the average number of affected customers
SELECT 
  AVG(affected_customers) AS avg_affected_customers 
FROM 
  grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
  demand_loss_mw IS NOT NULL;
--------------------------------------------------------------
query result
grid
avg_affected_customers
128240



