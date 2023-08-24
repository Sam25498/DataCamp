/*In the previous exercise, you used RANK to assign rankings to one group of athletes.
In real-world data, however, you'll often find numerous groups within your data. Without partitioning your data, one group's 
values will influence the rankings of the others.

Also, while RANK skips numbers in case of identical values, the most natural way to assign 
rankings is not to skip numbers. If two countries are tied for second place, the country after them is considered to be third by most people.*/
WITH Athlete_Medals AS (
  SELECT
    Country, Athlete, COUNT(*) AS Medals
  FROM Summer_Medals
  WHERE
    Country IN ('JPN', 'KOR')
    AND Year >= 2000
  GROUP BY Country, Athlete
  HAVING COUNT(*) > 1)

SELECT
  Country,
  -- Rank athletes in each country by the medals they've won
  Athlete,
  DENSE_RANK() OVER (PARTITION BY Country
                ORDER BY Medals DESC) AS Rank_N
FROM Athlete_Medals
ORDER BY Country ASC, RANK_N ASC;
--------------------------------------------------------------
query result
summer_medals
country	athlete	rank_n
JPN	KITAJIMA Kosuke	1
JPN	UCHIMURA Kohei	2
JPN	TAKEDA Miho	3
JPN	TACHIBANA Miya	3
JPN	IRIE Ryosuke	4
JPN	TOMITA Hiroyuki	4
JPN	SUZUKI Satomi	4
