--Select the release_year, country, and the maximum budget aliased as max_budget for each year and each country; sort your results by release_year and country.

-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT release_year, country, MAX(budget) AS max_budget
FROM films
GROUP BY country , release_year;
--------------------------------------------------------------------------------------

query result
release_year	country	max_budget
1933	USA	439000
1979	Australia	200000
2010	UK	95000000
2004	UK	130000000
null	null	null
2015	India	150000000
