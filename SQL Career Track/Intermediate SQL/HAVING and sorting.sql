
-- Select the country and average_budget from films
SELECT country, AVG(budget) AS average_budget
FROM films
-- Group by country
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING AVG(budget) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget ASC;
----------------------------------------------------------
query result
films
country	average_budget
Hungary	1260000000.00000000
South Korea	1383960000.00000000

--------------------------
Summary
--------------------------
----------------------------------------------------------------------------------------------------------------
--1.Select the release_year for each film in the films table, filter for records released after 1990, and group by release_year.,
------------------------------------------------------------------------------------------------------------------
  123456
-- Select the release_year for films released after 1990 grouped by year
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP BY release_year;
-------------------------------------------------------
query result
films
release_year
2008
1991
2009
2005
2013

-------------------------------------------------------------------------------------------------------------------------------------------------
--2.Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far.
---------------------------------------------------------------------------------------------------------------------------------------------------------
  12345
-- Modify the query to also list the average budget and average gross
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;
---------------------------------------------------------------
query result
films
release_year	avg_budget	avg_gross
2008	41804885.572139303483	44573509.378109452736
1991	25176548.387096774194	53844501.666666666667
2009	37073287.037037037037	46207440.200000000000
2005	70323938.231527093596	41159143.290640394089
2013	40519044.915492957746	56158357.775401069519
----------------------------------------------------------------------------------------------------------------
--3. Modify the query once more so that only years with an average budget of greater than 60 million are included.,
------------------------------------------------------------------------------------------------------------------
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
HAVING AVG(budget) > 60000000;

-----------------------------
query result
films
release_year	avg_budget	avg_gross
2005	70323938.231527093596	41159143.290640394089
2006	93968929.577464788732	39237855.953703703704

----------------------------------------------------------------------------- 
--4. Finally, order the results from the highest average gross and limit to one.
-----------------------------------------------------------------------------

query.sql
12345678
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;
-----------------------------------------------------------------------------
query result
films
release_year	avg_budget	avg_gross
2005	70323938.231527093596	41159143.290640394089
