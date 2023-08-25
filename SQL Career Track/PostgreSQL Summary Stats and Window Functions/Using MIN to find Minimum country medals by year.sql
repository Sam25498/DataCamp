--Return the year, medals earned, and minimum medals earned so far.
WITH France_Medals AS (
  SELECT
    Year, COUNT(*) AS Medals
  FROM Summer_Medals
  WHERE
    Country = 'FRA'
    AND Medal = 'Gold' AND Year >= 2000
  GROUP BY Year)

SELECT
  Medals,
  Year,
  MIN(Medals) OVER (ORDER BY Year ASC) AS Min_Medals
FROM France_Medals
ORDER BY Year ASC;
---------------------------------------------------------------

query result
summer_medals
medals	year	min_medals
22	2000	22
21	2004	21
25	2008	21
30	2012	21
