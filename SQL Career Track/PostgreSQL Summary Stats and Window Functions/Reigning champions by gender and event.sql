/*In the previous exercise, you partitioned by gender to ensure that data about one gender doesn't get mixed into data
about the other gender. If you have multiple columns, however,
partitioning by only one of them will still mix the results of the other columns.*/
--Return the previous champions of each year's events by gender and event.
WITH Athletics_Gold AS (
  SELECT DISTINCT
    Gender, Year, Event, Country
  FROM Summer_Medals
  WHERE
    Year >= 2000 AND
    Discipline = 'Athletics' AND
    Event IN ('100M', '10000M') AND
    Medal = 'Gold')

SELECT
  Gender, Year, Event,
  Country AS Champion,
  -- Fetch the previous year's champion by gender and event
  LAG(Country) OVER (PARTITION BY Gender, Event
            ORDER BY Year ASC) AS Last_Champion
FROM Athletics_Gold
ORDER BY Event ASC, Gender ASC, Year ASC;
---------------------------------------------------
query result
summer_medals
gender	year	event	champion	last_champion
Men	2000	10000M	ETH	null
Men	2004	10000M	ETH	ETH
Men	2008	10000M	ETH	ETH
Men	2012	10000M	GBR	ETH
Women	2000	10000M	ETH	null
Women	2004	10000M	CHN	ETH
Women	2008	10000M	ETH	CHN
