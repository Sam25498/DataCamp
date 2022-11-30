-- Select all fields from economies2015
SELECT *
FROM economies2015   
-- Set operation
UNION
-- Select all fields from economies2019
SELECT *
FROM economies2019
ORDER BY code, year;

--query result
economies2019
economies2015

code	year	income_group	gross_savings
ABW	2015	High income	14.867851
AGO	2015	Lower middle income	25.021326
AGO	2019	Lower middle income	25.524847
ALB	2015	Upper middle income	16.863981
ALB	2019	Upper middle income	14.499825
