/*Return the athletes, the number of medals they earned, and the medals running total, ordered by the athletes' names in alphabetical order.*/
WITH Athlete_Medals AS (
  SELECT
    Athlete, COUNT(*) AS Medals
  FROM Summer_Medals
  WHERE
    Country = 'USA' AND Medal = 'Gold'
    AND Year >= 2000
  GROUP BY Athlete)

SELECT
  -- Calculate the running total of athlete medals
  Athlete,
  Medals,
  SUM(Medals) OVER (ORDER BY athlete ASC) AS Max_Medals
FROM Athlete_Medals
ORDER BY Athlete ASC;
------------------------------------------------------------------------------
query result
summer_medals
athlete	medals	max_medals
ABDUR-RAHIM Shareef	1	1
ABERNATHY Brent	1	2
ADRIAN Nathan	3	5
AHRENS Chris	1	6
AINSWORTH Kurt	1	7
ALLEN Ray	1	8
ALLEN Wyatt	1	9
