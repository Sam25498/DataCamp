-- Query that determines all pairs of code and year from economies and populations, without duplicates
SELECT code, year
FROM economies
UNION
SELECT country_code, year
FROM populations
ORDER BY code, year;

--query result
economies
populations

code	year
ABW	2010
ABW	2015
AFG	2010
AFG	2015
AGO	2010
AGO	2015
ALB	2010
