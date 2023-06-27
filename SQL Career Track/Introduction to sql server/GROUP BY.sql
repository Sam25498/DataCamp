-- Select the region column
SELECT 
  nerc_region,
  -- Sum the demand_loss_mw column
  SUM(demand_loss_mw) AS demand_loss
FROM 
  grid
  -- Exclude NULL values of demand_loss
WHERE 
  demand_loss_mw IS NOT NULL
  -- Group the results by nerc_region
GROUP BY 
  nerc_region
  -- Order the results in descending order of demand_loss
ORDER BY 
  demand_loss DESC;
----------------------------------------------------------------
query result
grid
nerc_region	demand_loss
WECC	72019
SERC	51737
RFC	31037
TRE	8202
PR	6880
NPCC	4328
SPP	1936
MRO	916
FRCC	833
Showing 9 out of 9 rows
