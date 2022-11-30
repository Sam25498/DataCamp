--Perform an appropriate set operation that determines all pairs of country code and year (in that order) from economies and populations, excluding duplicates.
--Order by country code and year.

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
...
CYM	2010
CYM	2015
CYP	2010
CYP	2015
CZE	2010
CZE	2015
Showing 100 out of 434 rows

--Amend the query to return all combinations (including duplicates) of country code and year in the economies or the populations tables.
-- Using UNION ALL
SELECT code, year
FROM economies
-- Set theory clause
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;
