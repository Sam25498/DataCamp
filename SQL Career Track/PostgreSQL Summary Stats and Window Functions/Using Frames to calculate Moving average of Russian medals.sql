/*Using frames with aggregate window functions allow you to calculate many common metrics, including moving averages and totals. These metrics track the change in performance over time.
Calculate the 3-year moving average of medals earned.*/
WITH Russian_Medals AS (
  SELECT
    Year, COUNT(*) AS Medals
  FROM Summer_Medals
  WHERE
    Country = 'RUS'
    AND Medal = 'Gold'
    AND Year >= 1980
  GROUP BY Year)

SELECT
  Year, Medals,
  --- Calculate the 3-year moving average of medals earned
  AVG(Medals) OVER
    (ORDER BY Year ASC
     ROWS BETWEEN
     2 PRECEDING AND CURRENT ROW) AS Medals_MA
FROM Russian_Medals
ORDER BY Year ASC;
---------------------------------------------------------
--query result
summer_medals
year	medals	medals_ma
1996	36	36.0000000000000000
2000	66	51.0000000000000000
2004	47	49.6666666666666667
2008	43	52.0000000000000000
2012	47	45.6666666666666667
