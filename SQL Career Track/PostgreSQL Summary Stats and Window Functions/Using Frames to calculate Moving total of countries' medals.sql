/*What if your data is split into multiple groups spread over one or more columns in the table? Even with a defined frame, if you can't somehow separate the groups' data, one group's values will affect the average of another group's values.
Calculate the 3-year moving sum of medals earned per country.*/
WITH Country_Medals AS (
  SELECT
    Year, Country, COUNT(*) AS Medals
  FROM Summer_Medals
  GROUP BY Year, Country)

SELECT
  Year, Country, Medals,
  -- Calculate each country's 3-game moving total
  SUM(Medals) OVER
    (PARTITION BY Country
     ORDER BY Year ASC
     ROWS BETWEEN
     2 PRECEDING AND CURRENT ROW) AS Medals_MA
FROM Country_Medals
ORDER BY Country ASC, Year ASC;
----------------------------------------------------------
query result
summer_medals
year	country	medals	medals_ma
2008	AFG	1	1
2012	AFG	1	2
1988	AHO	1	1
1984	ALG	2	2
1992	ALG	2	4
1996	ALG	3	7
2000	ALG	5	10
