/*
Correlation
What's the relationship between a company's revenue and its other financial attributes? Compute the correlation between revenues and other financial variables with the corr() function.

Instructions
100 XP
Compute the correlation between revenues and profits.
Compute the correlation between revenues and assets.
Compute the correlation between revenues and equity.
*/
-- Correlation between revenues and profit
SELECT corr(revenues,profits) AS rev_profits,
	   -- Correlation between revenues and assets
       corr(revenues,assets) AS rev_assets,
       -- Correlation between revenues and equity
       corr(revenues,equity) AS rev_equity 
  FROM fortune500;
--------------------------------------------------------
query result
fortune500
rev_profits	rev_assets	rev_equity
0.5999935815724783	0.3294995213185059	0.5465709997184311
