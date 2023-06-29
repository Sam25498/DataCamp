-- Declare the variable @region, and specify the data type of the variable
DECLARE @region VARCHAR(10)
--SET your newly defined variable to 'RFC'.
-- Update the variable value
SET @region = 'RFC'

SELECT description,
       nerc_region,
       demand_loss_mw,
       affected_customers
FROM grid
WHERE nerc_region = @region;
----------------------------------------------------
--QUERY RESULT
description	nerc_region	demand_loss_mw	affected_customers
Severe Weather  Thunderstorms	RFC	null	127000
Severe Weather  Thunderstorms	RFC	null	138802
Severe Weather  Thunderstorms	RFC	null	66383
Suspected Physical Attack	RFC	null	null
Severe Weather  Heavy Winds	RFC	null	56000
...
  Severe Weather  Hurricane Sandy	RFC	0	219000
Severe Weather  Hurricane Sandy	RFC	null	850000
Physical Attack Vandalism	RFC	0	0
Physical Attack Vandalism	RFC	null	null
Physical Attack Vandalism	RFC	0	0
Physical Attack Vandalism	RFC	0	0
Showing 100 out of 246 rows

