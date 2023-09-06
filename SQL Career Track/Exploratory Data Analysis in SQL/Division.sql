/*
Division
Compute the average revenue per employee for Fortune 500 companies by sector.

Instructions
0 XP
Compute revenue per employee by dividing revenues by employees; use casting to produce a numeric result.
Take the average of revenue per employee with avg(); alias this as avg_rev_employee.
Group by sector.
Order by the average revenue per employee.
*/
-- Select average revenue per employee by sector
SELECT sector, 
       avg(revenues/employees::numeric) AS avg_rev_employee
  FROM fortune500
 GROUP BY sector
 -- Use the alias to order the results
 ORDER BY avg_rev_employee;
--------------------------------------------------------------------------
sector	avg_rev_employee
Hotels, Restaurants & Leisure	0.09498718151056814829
Apparel	0.27865942976680063809
Food & Drug Stores	0.30799950410060207070
Motor Vehicles & Parts	0.34252712424659522769
Household Products	0.35557338969595350494
Retailing	0.36019456092078082945
Industrials	0.36148543376146347043
