/*
Age of actors from the USA
Now you will explore the age of American actors and actresses. Report the date of birth of the oldest and youngest US actor and actress.

Instructions
100 XP
Create a subsequent SELECT statements in the FROM clause to get all information about actors from the USA.
Give the subsequent SELECT statement the alias a.
Report for actors from the USA the year of birth of the oldest and the year of birth of the youngest actor and actress.
*/
SELECT a.gender, -- Report for male and female actors from the USA 
       min(a.year_of_birth), -- The year of birth of the oldest actor
       max(a.year_of_birth) -- The year of birth of the youngest actor
FROM
   (SELECT *
   FROM actors
   WHERE nationality = 'USA') -- Use a subsequen SELECT to get all information about actors from the USA
   AS a -- Give the table the name a
GROUP BY a.gender;
----------------------------------------------------
query result
actors
gender	min	max
female	1945	1993
male	1930	1992
