--Split the athletes into top, middle, and bottom thirds based on their count of medals.
WITH Athlete_Medals AS (
  SELECT Athlete, COUNT(*) AS Medals
  FROM Summer_Medals
  GROUP BY Athlete
  HAVING COUNT(*) > 1)
  
SELECT
  Athlete,
  Medals,
  -- Split athletes into thirds by their earned medals
  NTILE(3) OVER(ORDER BY Medals DESC) AS Third
FROM Athlete_Medals
ORDER BY Medals DESC, Athlete ASC;
----------------------------------
query result
summer_medals
athlete	medals	third
PHELPS Michael	22	1
LATYNINA Larisa	18	1
ANDRIANOV Nikolay	15	1
MANGIAROTTI Edoardo	13	1
ONO Takashi	13	1
SHAKHLIN Boris	13	1

--Return the average of each third.
WITH Athlete_Medals AS (
  SELECT Athlete, COUNT(*) AS Medals
  FROM Summer_Medals
  GROUP BY Athlete
  HAVING COUNT(*) > 1),
  
  Thirds AS (
  SELECT
    Athlete,
    Medals,
    NTILE(3) OVER (ORDER BY Medals DESC) AS Third
  FROM Athlete_Medals)
  
SELECT
  -- Get the average medals earned in each third
  Third,
  AVG(Medals) AS Avg_Medals
FROM Thirds
GROUP BY Third
ORDER BY Third ASC;
--------------------------------------------------
query result
summer_medals
third	avg_medals
1	3.7864464692482916
2	2.0000000000000000
3	2.0000000000000000
