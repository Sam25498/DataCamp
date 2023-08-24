/*t's often useful to get the first or last value in a dataset to compare all other values to it.
With absolute fetching functions like FIRST_VALUE, you can fetch a value at an absolute position in the table, like its beginning or end.
Return all athletes and the first athlete ordered by alphabetical order.*/
WITH All_Male_Medalists AS (
  SELECT DISTINCT
    Athlete
  FROM Summer_Medals
  WHERE Medal = 'Gold'
    AND Gender = 'Men')

SELECT
  -- Fetch all athletes and the first athlete alphabetically
  Athlete,
  FIRST_VALUE(Athlete) OVER (
    ORDER BY Athlete ASC
  ) AS First_Athlete
FROM All_Male_Medalists;
--------------------------------------------------------------------------
query result
summer_medals
athlete	first_athlete
AABYE Edgar	AABYE Edgar
AALTONEN Paavo Johannes	AABYE Edgar
AAS Thomas Valentin	AABYE Edgar
ABALMASAU Aliaksei	AABYE Edgar
ABALO Luc	AABYE Edgar
ABANDA ETONG Patrice	AABYE Edgar
ABARCA Jose Maria	AABYE Edgar
