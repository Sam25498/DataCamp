/*
Exploring nationality and gender of actors
For each movie in the database, the three most important actors are identified and listed in the table actors. This table includes the nationality and gender of the actors. We are interested in how much diversity there is in the nationalities of the actors and how many actors and actresses are in the list.

Instructions
100 XP
Count the number of actors in the table actors from each country, the number of male and female actors and the total number of actors.*/
SELECT 
	nationality ,-- Select nationality of the actors
    gender, -- Select gender of the actors
    count(*) -- Count the number of actors
FROM actors
GROUP BY GROUPING SETS ((nationality), (gender), ()); -- Use the correct GROUPING SETS operation
----------------------------------------------------------------------------------
query result
actors
nationality	gender	count
null	null	145
Somalia	null	1
null	null	2
Argentina	null	1
Spain	null	3
Italy	null	1
Puerto Rico	null	1
