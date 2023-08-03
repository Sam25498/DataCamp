
-- Find the release_year and film_count of each year
SELECT release_year, COUNT(*) AS film_count
FROM films
GROUP BY release_year;
-----------------------------------------------------------------------
query result
release_year	film_count
1954	5
1988	31
1959	3
1964	10
1969	10
null	42
2008	225

-----------------------------------------------------------------------

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;
-----------------------------------------------------------------------
query result
release_year	avg_duration
1954	140.6000000000000000
1988	107.0000000000000000
1959	136.6666666666666667
1964	119.4000000000000000
1969	126.0000000000000000
null	77.4390243902439024
