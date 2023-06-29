-- Declare @start
Declare @start DATE

-- SET @start to '2014-01-24'
SET @start = '2014-01-24'
-------------------------------------------------
--Declare a new variable called @stop of type DATE.
-- Declare @start
DECLARE @start DATE

-- Declare @stop
DECLARE @stop DATE


-- SET @start to '2014-01-24'
SET @start = '2014-01-24'

-- SET @stop to '2014-07-02'
SET @stop = '2014-07-02'
--------------------------------------------------------------
--Declare a new variable called @affected of type INT.
-- Declare @start
DECLARE @start DATE

-- Declare @stop
DECLARE @stop DATE

-- Declare @affected
DECLARE @affected INT


-- SET @start to '2014-01-24'
SET @start = '2014-01-24'

-- SET @stop to '2014-07-02'
SET @stop  = '2014-07-02'

-- Set @affected to 5000
SET @affected = 5000

----------------------------------------------------------------------
--Retrieve all rows where event_date is BETWEEN @start and @stop and affected_customers is greater than or equal to @affected.
-- Declare your variables
DECLARE @start DATE
DECLARE @stop DATE
DECLARE @affected INT;
-- SET the relevant values for each variable
SET @start = '2014-01-24'
SET @stop  = '2014-07-02'
SET @affected =  5000 ;

SELECT 
  description,
  nerc_region,
  demand_loss_mw,
  affected_customers
FROM 
  grid
-- Specify the date range of the event_date and the value for @affected
WHERE event_date > @start AND event_date < @stop
AND affected_customers >= @affected;
---------------------------------------------------------------------------
--query result
description	nerc_region	demand_loss_mw	affected_customers
Severe Weather  Thunderstorms	RFC	null	127000
Severe Weather  Thunderstorms	MRO	424	120000
Severe Weather  Thunderstorms	RFC	null	138802
Severe Weather  Thunderstorms	MRO	null	55951
Severe Weather  Thunderstorms	RFC	null	66383
Severe Weather  Thunderstorms	SERC	217	65000
Severe Weather  Thunderstorms	SERC	494	38500
Severe Weather  Thunderstorms	SERC	null	56475
Public Appeal to Reduce Electricity Usage  Wild Fires	WECC	3900	1400000
