/*
All group-level subtotals
You want to break down all medals awarded to Russia in the 2012 Olympic games per gender and medal type. Since the medals all belong to one country, Russia, it makes sense to generate all possible subtotals (Gender- and Medal-level subtotals), as well as a grand total.

Generate a breakdown of the medals awarded to Russia per country and medal type, including all group-level subtotals and a grand total.

Instructions
100 XP
Count the medals awarded per gender and medal type.
Generate all possible group-level counts (per gender and medal type subtotals and the grand total).
*/
-- Count the medals per gender and medal type
SELECT
  gender,
  Medal,
  COUNT(*) AS Awards
FROM Summer_Medals
WHERE
  Year = 2012
  AND Country = 'RUS'
-- Get all possible group-level subtotals
GROUP BY CUBE(Gender,Medal)
ORDER BY Gender ASC, Medal ASC;
---------------------------------------------------
query result
summer_medals
gender	medal	awards
Men	Bronze	34
Men	Gold	23
Men	Silver	7
Men	null	64
Women	Bronze	17
Women	Gold	24
Women	Silver	25
