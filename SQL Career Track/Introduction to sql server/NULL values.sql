--Use a shortcut to select all columns from grid. Then filter the results to only include rows where demand_loss_mw is unknown or missing.

-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return rows where demand_loss_mw is not missing or unknown   
WHERE 
  demand_loss_mw IS NULL;
  --------------------------------------------------------
  query result
grid
grid_id	description	event_year	event_date	restore_date	nerc_region	demand_loss_mw	affected_customers
1	Severe Weather  Thunderstorms	2014	2014-06-30	2014-07-01	RFC	null	127000
3	Fuel Supply Emergency  Coal	2014	2014-06-27	null	MRO	null	null
4	Physical Attack  Vandalism	2014	2014-06-24	2014-06-24	SERC	null	null
5	Physical Attack  Vandalism	2014	2014-06-19	2014-06-19	SERC	null	null
6	Physical Attack  Vandalism	2014	2014-06-18	2014-06-18	WECC	null	null
7	Severe Weather  Thunderstorms	2014	2014-06-18	2014-06-20	RFC	null	138802
8	Severe Weather  Thunderstorms	2014	2014-06-15	2014-06-15	MRO	null	55951
...
124	Voltage Reduction due to Severe Weather  Cold	2014	2014-01-06	2014-01-06	RFC	null	null
125	Voltage Reduction due to Severe Weather  Cold	2014	2014-01-06	2014-01-06	RFC	null	null
126	Voltage Reduction due to Severe Weather  Cold	2014	2014-01-06	2014-01-06	RFC	null	null
127	Voltage Reduction due to Severe Weather  Cold	2014	2014-01-06	2014-01-06	RFC	null	null
128	Vandalism	2014	2014-01-06	2014-01-06	RFC	null	null
Showing 100 out of 457 rows
--------------------------------------------------------------

-- Adapt your code to return rows where demand_loss_mw is not unknown or missing.
-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return rows where demand_loss_mw is not missing or unknown   
WHERE 
  demand_loss_mw IS NOT NULL;
  ------------------------------------------------------------
  query result
grid
grid_id	description	event_year	event_date	restore_date	nerc_region	demand_loss_mw	affected_customers
2	Severe Weather  Thunderstorms	2014	2014-06-30	2014-07-01	MRO	424	120000
14	Severe Weather  Thunderstorms	2014	2014-06-07	2014-06-08	SERC	217	65000
16	Severe Weather  Thunderstorms	2014	2014-06-05	2014-06-07	SERC	494	38500
18	Electrical System Islanding	2014	2014-06-03	2014-06-03	WECC	338	null
24	Public Appeal to Reduce Electricity Usage  Wild Fires	2014	2014-05-16	2014-05-16	WECC	3900	1400000
...
320	Physical Attack Vandalism	2012	2012-11-07	2012-11-07	NPCC	0	0
321	Physical Attack Vandalism	2012	2012-11-02	2012-11-02	NPCC	0	0
324	Vandalism	2012	2012-10-30	2012-10-30	NPCC	0	0
325	Physical Attack Vandalism	2012	2012-10-30	2012-10-30	RFC	0	0
326	Severe Weather  Hurricane Sandy	2012	2012-10-29	2012-11-09	RFC	0	208000
327	Severe Weather  Hurricane Sandy	2012	2012-10-29	2012-11-05	RFC	0	346000
Showing 100 out of 349 rows
