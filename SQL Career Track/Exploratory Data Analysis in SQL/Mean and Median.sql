/*
Mean and Median
Compute the mean (avg()) and median assets of Fortune 500 companies by sector.

Use the percentile_disc() function to compute the median:

percentile_disc(0.5) 
WITHIN GROUP (ORDER BY column_name)
Instructions
100 XP
Select the mean and median of assets.
Group by sector.
Order the results by the mean.
*/
-- What groups are you computing statistics by?
SELECT sector,
       -- Select the mean of assets with the avg function
       avg(assets) AS mean,
       -- Select the median
       percentile_disc(0.5) WITHIN GROUP (ORDER BY assets) AS median
  FROM fortune500
 -- Computing statistics for each what?
 GROUP BY sector
 -- Order results by a value of interest
 ORDER BY mean;
------------------------------------------------
query result
fortune500
sector	mean	median
Engineering & Construction	8199.2307692307692308	8709
Wholesalers	9362.5862068965517241	5390
Materials	10833.263157894737	7741
Apparel	11064.8000000000000000	9739
Retailing	14473.148936170213	7858
Hotels, Restaurants & Leisure	16795.400000000000	14330
