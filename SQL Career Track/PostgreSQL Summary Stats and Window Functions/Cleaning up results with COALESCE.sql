/*
Returning to the breakdown of Scandinavian awards you previously made, you want to clean up the results by replacing the nulls with meaningful text.

Instructions
100 XP
Turn the nulls in the Country column to All countries, and the nulls in the Gender column to All genders.
*/
SELECT
  -- Replace the nulls in the columns with meaningful text
  COALESCE(Country, 'All countries') AS Country,
  COALESCE(Gender, 'All genders') AS Gender,
  COUNT(*) AS Awards
FROM Summer_Medals
WHERE
  Year = 2004
  AND Medal = 'Gold'
  AND Country IN ('DEN', 'NOR', 'SWE')
GROUP BY ROLLUP(Country, Gender)
ORDER BY Country ASC, Gender ASC;
--------------------------------------------------------------
--query result
summer_medals
country	gender	awards
All countries	All genders	29
DEN	All genders	19
DEN	Men	4
DEN	Women	15
NOR	All genders	5
NOR	Men	3
NOR	Women	2
SWE	All genders	5
SWE	Men	4
SWE	Women	1
