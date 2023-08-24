/*The Summer Olympics dataset contains the results of the games between 1896 and 2012. The first Summer Olympics were held in 1896,
the second in 1900, and so on. What if you want to easily query the table to see in which year the 13th Summer Olympics were held? 
You'd need to number the rows for that.*/

SELECT
  Year,

  -- Assign numbers to each year
  ROW_NUMBER() OVER() AS Row_N
FROM (
  SELECT DISTINCT year 
  FROM Summer_Medals
  ORDER BY Year ASC
) AS Years
ORDER BY Year ASC;
----------------------------------------------------------
--query result
summer_medals
year	row_n
1896	1
1900	2
1904	3
1908	4
1912	5
1920	6
1924	7
1928	8
1932	9
1936	10
1948	11
1952	12
1956	13
