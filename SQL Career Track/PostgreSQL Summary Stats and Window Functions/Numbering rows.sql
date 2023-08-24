--Number each row in the dataset.
SELECT
  *,
  -- Assign numbers to each row
  ROW_NUMBER() OVER() AS Row_N
FROM Summer_Medals
ORDER BY Row_N ASC;
--------------------------------------------
query result
summer_medals
year	city	sport	discipline	athlete	country	gender	event	medal	row_n
1896	Athens	Aquatics	Swimming	HAJOS Alfred	HUN	Men	100M Freestyle	Gold	1
1896	Athens	Aquatics	Swimming	HERSCHMANN Otto	AUT	Men	100M Freestyle	Silver	2
1896	Athens	Aquatics	Swimming	DRIVAS Dimitrios	GRE	Men	100M Freestyle For Sailors	Bronze	3
1896	Athens	Aquatics	Swimming	MALOKINIS Ioannis	GRE	Men	100M Freestyle For Sailors	Gold	4
1896	Athens	Aquatics	Swimming	CHASAPIS Spiridon	GRE	Men	100M Freestyle For Sailors	Silver	5
