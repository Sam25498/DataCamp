/*
You want to look at three Scandinavian countries' earned gold medals per country and gender in the year 2004. You're also interested in Country-level subtotals to get the total medals earned for each country, but Gender-level subtotals don't make much sense in this case, so disregard them.

Instructions
100 XP
Count the gold medals awarded per country and gender.
Generate Country-level gold award counts.
*/
-- Count the gold medals per country and gender
-- Count the gold medals per country and gender
SELECT
  Country,
  Gender,
  COUNT(*) AS Gold_Awards
FROM Summer_Medals
WHERE
  Year = 2004
  AND Medal = 'Gold'
  AND Country IN ('DEN', 'NOR', 'SWE')
-- Generate Country-level subtotals
GROUP BY Country, ROLLUP(Gender)
ORDER BY Country ASC, Gender ASC;
----------------------------------------------------
query result
summer_medals
country	gender	gold_awards
DEN	Men	4
DEN	Women	15
DEN	null	19
NOR	Men	3
NOR	Women	2
NOR	null	5
SWE	Men	4
