
-- Calculate the title and duration_hours from films
SELECT title,(duration/60.0) AS duration_hours
FROM films;

---------------------------------------------------------------------------
query result
title	duration_hours
Intolerance: Love's Struggle Throughout the Ages	2.0500000000000000
Over the Hill to the Poorhouse	1.8333333333333333
The Big Parade	2.5166666666666667
Metropolis	2.4166666666666667
Pandora's Box	1.8333333333333333
The Broadway Melody	1.6666666666666667

------------------------------------------------------------

-- Calculate the percentage of people who are no longer alive
SELECT COUNT(deathdate) * 100.0 / COUNT(name) AS percentage_dead
FROM people;
------------------------------------------------------------
query result

percentage_dead
9.3723949029415267
------------------------------------------------------------

-- Find the number of decades in the films table
SELECT ((MAX(release_year) - MIN(release_year)) / 10.0) AS number_of_decades
FROM films;

------------------------------------------------------------
query result

number_of_decades
10.0000000000000000
