-- Select average life_expectancy from the populations table
SELECT AVG(life_expectancy) 
FROM populations
-- Filter for the year 2015
WHERE year = 2015;

--query result
--populations

avg
71.6763415481105

--Filter for only those populations where life_expectancy is 1.15 times higher than average.

SELECT *
FROM populations
-- Filter for only those populations where life expectancy is 1.15 times higher than average
WHERE life_expectancy > 1.15 * AVG(life_expectancy)
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015) 
	 AND year = 2015;
   
-- Right Code
SELECT *
FROM populations
-- Filter for only those populations where life expectancy is 1.15 times higher than average
WHERE life_expectancy > 1.15 *
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015) 
     AND year = 2015;   
   
-- query result
populations

pop_id	country_code	year	fertility_rate	life_expectancy	size
21	AUS	2015	1.833	82.45122	23789752
376	CHE	2015	1.54	83.19756	8281430
356	ESP	2015	1.32	83.380486	46443992
134	FRA	2015	2.01	82.67073	66538392
170	HKG	2015	1.195	84.278046	7305700
174	ISL	2015	1.93	82.86098	330815   
