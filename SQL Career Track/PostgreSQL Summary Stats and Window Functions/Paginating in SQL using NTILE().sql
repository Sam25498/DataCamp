--Split the distinct events into exactly 111 groups, ordered by event in alphabetical order
WITH Events AS (
  SELECT DISTINCT Event
  FROM Summer_Medals)
  
SELECT
  --- Split up the distinct events into 111 unique groups
  Event,
  NTILE(111) OVER (ORDER BY Event ASC) AS Page
FROM Events
ORDER BY Event ASC;
---------------------------------------------------------
--query result
summer_medals
event	page
+ 100KG	1
+ 100KG (Heavyweight)	1
+ 100KG (Super Heavyweight)	1
+ 105KG	1
+ 108KG Total (Super Heavyweight)	1
+ 110KG Total (Super Heavyweight)	1
+ 67 KG	2
