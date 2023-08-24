--Assign a number to each year in which Summer Olympic games were held so that rows with the most recent years have lower row numbers.
SELECT
  Year,
  -- Assign the lowest numbers to the most recent years
  ROW_NUMBER() OVER(ORDER BY Year DESC) AS Row_N
FROM (
  SELECT DISTINCT Year
  FROM Summer_Medals
) AS Years
ORDER BY Year;
--------------------------------------------------------------
query result
summer_medals
year	row_n
1896	27
1900	26
1904	25
1908	24
1912	23
1920	22
