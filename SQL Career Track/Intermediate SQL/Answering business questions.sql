--Which release_year had the most language diversity?
12345
SELECT release_year, COUNT(DISTINCT language) AS diversity_count
FROM films
GROUP BY release_year
ORDER BY diversity_count DESC;

------------------------------------------------

query result
films
release_year	diversity_count
2006	16
2015	15
2005	14
2013	13
2008	13
2009	12
