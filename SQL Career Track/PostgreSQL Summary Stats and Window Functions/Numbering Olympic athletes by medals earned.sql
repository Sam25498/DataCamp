--For each athlete, count the number of medals he or she has earned.
SELECT
  -- Count the number of medals each athlete has earned
  athlete,
  COUNT(medal) AS Medals
FROM Summer_Medals
GROUP BY Athlete
ORDER BY Medals DESC;
-----------------------------------------------
--query result
summer_medals
athlete	medals
PHELPS Michael	22
LATYNINA Larisa	18
ANDRIANOV Nikolay	15
MANGIAROTTI Edoardo	13
ONO Takashi	13
SHAKHLIN Boris	13
THOMPSON Jenny	12

--Having wrapped the previous query in the Athlete_Medals CTE, rank each athlete by the number of medals they've earned.
WITH Athlete_Medals AS (
  SELECT
    -- Count the number of medals each athlete has earned
    Athlete,
    COUNT(*) AS Medals
  FROM Summer_Medals
  GROUP BY Athlete)

SELECT
  -- Number each athlete by how many medals they've earned
  athlete,
  ROW_NUMBER() OVER (ORDER BY medals DESC) AS Row_N
FROM Athlete_Medals
ORDER BY Medals DESC;
-----------------------------------------------------------
--query result
summer_medals
athlete	row_n
PHELPS Michael	1
LATYNINA Larisa	2
ANDRIANOV Nikolay	3
MANGIAROTTI Edoardo	4
ONO Takashi	5
SHAKHLIN Boris	6
THOMPSON Jenny	7
