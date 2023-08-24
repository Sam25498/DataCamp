/*In chapter 1, you used ROW_NUMBER to rank athletes by awarded medals. However, ROW_NUMBER assigns different numbers to athletes with the same count of awarded medals, 
so it's not a useful ranking function; if two athletes earned the same number of medals, they should have the same rank.
Rank each athlete by the number of medals they've earned -- the higher the count, the higher the rank -- with identical numbers in case of identical values.*/
WITH Athlete_Medals AS (
  SELECT
    Athlete,
    COUNT(*) AS Medals
  FROM Summer_Medals
  GROUP BY Athlete)

SELECT
  Athlete,
  Medals,
  -- Rank athletes by the medals they've won
  RANK() OVER (ORDER BY Medals DESC) AS Rank_N
FROM Athlete_Medals
ORDER BY Medals DESC;
-------------------------------------------------
query result
summer_medals
athlete	medals	rank_n
PHELPS Michael	22	1
LATYNINA Larisa	18	2
ANDRIANOV Nikolay	15	3
MANGIAROTTI Edoardo	13	4
ONO Takashi	13	4
SHAKHLIN Boris	13	4
THOMPSON Jenny	12	7
