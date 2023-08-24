--Return the previous champions of each year's event by gender.
WITH Tennis_Gold AS (
  SELECT DISTINCT
    Gender, Year, Country
  FROM Summer_Medals
  WHERE
    Year >= 2000 AND
    Event = 'Javelin Throw' AND
    Medal = 'Gold')

SELECT
  Gender, Year,
  Country AS Champion,
  -- Fetch the previous year's champion by gender
  LAG(Country) OVER (PARTITION BY Gender
            ORDER BY Year ASC) AS Last_Champion
FROM Tennis_Gold
ORDER BY Gender ASC, Year ASC;
--------------------------------------------------------------
query result
summer_medals
gender	year	champion	last_champion
Men	2000	CZE	null
Men	2004	NOR	CZE
Men	2008	NOR	NOR
Men	2012	TTO	NOR
Women	2000	NOR	null
Women	2004	CUB	NOR
Women	2008	CZE	CUB
