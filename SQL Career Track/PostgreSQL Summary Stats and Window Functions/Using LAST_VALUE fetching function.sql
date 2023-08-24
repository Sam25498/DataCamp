--Return the year and the city in which each Olympic games were held.
--Fetch the last city in which the Olympic games were held.
WITH Hosts AS (
  SELECT DISTINCT Year, City
    FROM Summer_Medals)

SELECT
  Year,
  City,
  -- Get the last city in which the Olympic games were held
  LAST_VALUE(City) OVER (
   ORDER BY Year ASC
   RANGE BETWEEN
     UNBOUNDED PRECEDING AND
     UNBOUNDED FOLLOWING
  ) AS Last_City
FROM Hosts
ORDER BY Year ASC;
-------------------------------------------------------------
query result
summer_medals
year	city	last_city
1896	Athens	London
1900	Paris	London
1904	St Louis	London
1908	London	London
1912	Stockholm	London
1920	Antwerp	London
1924	Paris	London
