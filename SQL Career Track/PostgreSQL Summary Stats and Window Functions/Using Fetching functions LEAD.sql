/*Fetching functions allow you to get values from different parts of the table into one row. 
If you have time-ordered data, you can "peek into the future" with the LEAD fetching function. 
This is especially useful if you want to compare a current value to a future value.

For each year, fetch the current gold medalist and the gold medalist 3 competitions ahead of the current row.*/
WITH Discus_Medalists AS (
  SELECT DISTINCT
    Year,
    Athlete
  FROM Summer_Medals
  WHERE Medal = 'Gold'
    AND Event = 'Discus Throw'
    AND Gender = 'Women'
    AND Year >= 2000)

SELECT
  -- For each year, fetch the current and future medalists
  Year,
  Athlete,
  LEAD(Athlete, 3) OVER (ORDER BY Year ASC) AS Future_Champion
FROM Discus_Medalists
ORDER BY Year ASC;

--------------------------------------------------------------------------------

query result
summer_medals
year	athlete	future_champion
2000	ZVEREVA Ellina	PERKOVIC Sandra
2004	SADOVA Natalya	null
2008	BROWN TRAFTON Stephanie	null
2012	PERKOVIC Sandra	null
