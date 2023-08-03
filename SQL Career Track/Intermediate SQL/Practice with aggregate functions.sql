-- Query the sum of film durations
SELECT SUM(duration) AS total_duration
FROM films;
------------------------------------
total_duration
534882
------------------------------------------------------

-- Calculate the average duration of all films
SELECT AVG(duration) AS average_duration
FROM films;
--------------------------------------------
query result
films
average_duration
107.9479313824419778
---------------------------------------------------

-- Find the latest release_year
SELECT MAX(release_year) AS latest_year
FROM films;

-----------------------------------------------------------------
query result
films
latest_year
2016

-----------------------------------------------------------------------

-- Find the duration of the shortest film
SELECT MIN(duration) AS shortest_film
FROM films;

--------------------------------------------------------------------------------
query result
films
shortest_film
7
