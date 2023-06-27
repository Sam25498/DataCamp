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
--The previous query results did not identify the country. Let's amend the query, returning the count of entries per country and the country column. Complete the aggregate section by finding the average place for each country.
  
-- Obtain a count for each country
SELECT 
  COUNT(country) AS country_count, 
  -- Retrieve the country column
  country, 
  -- Return the average of the Place column 
  AVG(place) AS average_place, 
  AVG(points) AS avg_points, 
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision 
GROUP BY 
  country;
--------------------------------------------------------------------------------------
query result
eurovision
country_count	country	average_place	avg_points	min_points	max_points
14	Albania	10	81	43	167
6	Andorra	17	26	8	80
10	Armenia	6	122	54	198
10	Austria	16	41	4	101
9	Azerbaijan	3	150	96	221
11	Belarus	14	56	10	176
15	Belgium	13	58	1	167
...
  15	Spain	15	49	1	97
20	Sweden	7	120	30	372
14	Switzerland	16	37	0	128
21	Turkey	7	107	21	197
17	Ukraine	7	130	30	280
15	United Kingdom	16	51	0	173
Showing 48 out of 48 rows
  
