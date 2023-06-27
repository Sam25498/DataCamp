-- Retrieve the minimum and maximum place, and point values
SELECT 
  -- the lower the value the higher the place, so MIN = the highest placing
  MIN(place) AS hi_place, 
  MAX(place) AS lo_place, 
  -- Retrieve the minimum and maximum points values. This time MIN = the lowest points value
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision;
-----------------------------------------------------------------------------------------
query result
eurovision
hi_place	lo_place	min_points	max_points
1	28	0	387
Showing 1 out of 1 rows

------------------------------------------------------------------------------------------------
--Let's obtain more insight from our results by adding a GROUP BY clause. Group the results by country

-- Retrieve the minimum and maximum place, and point values
SELECT 
  -- the lower the value the higher the place, so MIN = the highest placing
  MIN(place) AS hi_place, 
  MAX(place) AS lo_place,  
  -- Retrieve the minimum and maximum points values. This time MIN = the lowest points value
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision
  -- Group by country
GROUP BY 
  country;
-----------------------------------------------------------------------------------------
query result
eurovision
hi_place	lo_place	min_points	max_points
2	17	43	167
12	23	8	80
2	12	54	198
6	27	4	101
1	8	96	221
4	24	10	176
1	26	1	167
...
  6	23	1	97
1	21	30	372
8	25	0	128
1	16	21	197
1	19	30	280
2	26	0	173
Showing 48 out of 48 rows
