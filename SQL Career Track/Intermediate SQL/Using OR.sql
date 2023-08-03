-- Find the title and year of films from the 1990 or 1999
SELECT title, release_year
FROM films
WHERE release_year = 1990 OR release_year = 1999;

-------------------------------------------------------------------------------
--Filter the records to only include English or Spanish-language films.
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
	AND (language = 'English' OR language = 'Spanish') ;
------------------------------------------------------------------------------------------
--query result
films
title	release_year
Arachnophobia	1990
Back to the Future Part III	1990
Childs Play 2	1990
Dances with Wolves	1990
Days of Thunder	1990
Dick Tracy	1990
Die Hard 2	1990
------------------------------------------------------------------------------------------------------------
--Finally, restrict the query to only return films worth more than $2,000,000 gross.
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	AND (gross > 2000000);
-------------------------------------------------------------------------------------------
--query result
films
title	release_year
Arachnophobia	1990
Back to the Future Part III	1990
Child's Play 2	1990
Dances with Wolves	1990
Days of Thunder	1990
Dick Tracy	1990
Die Hard 2	1990
