SELECT 
  nerc_region, 
  SUM (demand_loss_mw) AS demand_loss 
FROM 
  grid 
  -- Remove the WHERE clause
GROUP BY 
  nerc_region 
  -- Enter a new HAVING clause so that the sum of demand_loss_mw is greater than 10000
HAVING
  SUM(demand_loss_mw) > 10000
ORDER BY 
  demand_loss DESC;
---------------------------------------------------------------
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
Showing 7 out of 7 rows
