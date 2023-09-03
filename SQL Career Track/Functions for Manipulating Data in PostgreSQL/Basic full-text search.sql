/*
Basic full-text search
Searching text will become something you do repeatedly when building applications or exploring data sets for data science. Full-text search is helpful when performing exploratory data analysis for a natural language processing model or building a search feature into your application.

In this exercise, you will practice searching a text column and match it against a string. The search will return the same result as a query that uses the LIKE operator with the % wildcard at the beginning and end of the string, but will perform much better and provide you with a foundation for more advanced full-text search queries. Let's dive in.

Instructions
100 XP
Select the title and description columns from the film table.
Perform a full-text search on the title column for the word elf.*/

12345
-- Select the title and description
SELECT title, description
FROM film
-- Convert the title to a tsvector and match it against the tsquery 
WHERE to_tsvector(title) @@ to_tsquery('elf');
----------------------------------------------------
query result
film
title	description
GHOSTBUSTERS ELF	A Thoughtful Epistle of a Dog And a Feminist who must Chase a Composer in Berlin
ELF MURDER	A Action-Packed Story of a Frisbee And a Woman who must Reach a Girl in An Abandoned Mine Shaft
ENCINO ELF	A Astounding Drama of a Feminist And a Teacher who must Confront a Husband in A Baloon
