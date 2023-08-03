
-- Calculate the sum of gross from the year 2000 or later
SELECT SUM(gross) AS total_gross
FROM films
WHERE release_year >= 2000;
-----------------------------------------------
query result
films
total_gross
150900926358

-------------------------------------------------------
-- Calculate the average gross of films that start with A
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';

--------------------------------------------------------------------
query result
films
avg_gross_a
47893236.422480620155

------------------------------------------------------------------
-- Calculate the lowest gross film in 1994
SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;

----------------------------------------------------------
query result
films
lowest_gross
125169

--------------------------------------------------------------------

-- Calculate the highest gross film released between 2000-2012
SELECT MAX(gross) AS highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;

--------------------------------------------------------------------
query result
films
highest_gross
760505847
