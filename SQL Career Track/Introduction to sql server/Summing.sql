--Obtain a grand total of the demand_loss_mw column by using the SUM function, and alias the result as MRO_demand_loss.
-- Only retrieve rows WHERE demand_loss_mw is not NULL and nerc_region is 'MRO'.
-- Sum the demand_loss_mw column
SELECT 
  SUM(demand_loss_mw) AS MRO_demand_loss 
FROM 
  grid 
WHERE
  -- demand_loss_mw should not contain NULL values
  demand_loss_mw IS NOT NULL
  -- and nerc_region should be 'MRO';
  AND nerc_region = 'MRO';
---------------------------------------------------------
--query result
--grid
MRO_demand_loss
916
