/*
Summarize numeric columns
Summarize the profit column in the fortune500 table using the functions you've learned.

You can access the course slides for reference using the PDF icon in the upper right corner of the screen.

Instructions 1/2
50 XP
1
Compute the min(), avg(), max(), and stddev() of profits.

Take Hint (-15 XP)
2
Now repeat step 1, but summarize profits by sector.
Order the results by the average profits for each sector.*/
-- Select min, avg, max, and stddev of fortune500 profits
SELECT MIN(profits),
      AVG(profits),
       MAX(profits),
       stddev(profits)
  FROM fortune500;
  ------------------------------------------------------------------
  min	avg	max	stddev
-6177	1783.4753507014028056	45687	3940.495363490788
-----------------------------------------------------------------------
--Now repeat step 1, but summarize profits by sector.
--Order the results by the average profits for each sector.
-- Select sector and summary measures of fortune500 profits
SELECT sector,
       MIN(profits),
      AVG(profits),
       MAX(profits),
       stddev(profits)
FROM fortune500
 -- What to group by?
 GROUP BY sector
 -- Order by the average profits
 ORDER BY avg;
-----------------------------------------------------
query result
fortune500
sector	min	avg	max	stddev
Energy	-6177	10.4446428571428571	7840	2264.572142925951
Materials	-440	272.4684210526315789	1027	406.632781447055
Engineering & Construction	15	390.1692307692307692	911.8	277.665120197620
Wholesalers	-199.4	391.2793103448275862	2258	532.171183776766
Retailing	-2221	991.7851063829787234	13643	2348.342559077222
Chemicals	-3.9	1137.0214285714285714	4318	1129.752304492226
Business Services	57.2	1155.3550000000000000	5991	1454.360686992199
