--Select the title and release_year of all films released between 1990 and 2000 (inclusive) using BETWEEN.
-- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;

------------------------------

query result
films
title	release_year
Arachnophobia	1990
Back to the Future Part III	1990
Childs Play 2	1990
Dances with Wolves	1990
Days of Thunder	1990
Dick Tracy	1990
Die Hard 2	1990

------------------------------------------
--Build on your previous query to select only films with a budget over $100 million.
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
-- Narrow down your query to films with budgets > $100 million
	AND budget > 100000000 ;
--------------------------------------------------------------------------
query result
films
title	release_year
Terminator 2: Judgment Day	1991
True Lies	1994
Waterworld	1995
Batman & Robin	1997
Dante's Peak	1997
Princess Mononoke	1997
Speed 2: Cruise Control	1997
Starship Troopers	1997
Titanic	1997
Tomorrow Never Dies	1997
A Bug's Life	1998
Antz	1998
Armageddon	1998
Les couloirs du temps: Les visiteurs II	1998
Lethal Weapon 4	1998
Tango	1998
Godzilla 2000	1999
Star Wars: Episode I - The Phantom Menace	1999
Stuart Little	1999
The Messenger: The Story of Joan of Arc	1999
The World Is Not Enough	1999
Wild Wild West	1999
Dinosaur	2000
Gladiator	2000
How the Grinch Stole Christmas	2000
Mission: Impossible II	2000
The Patriot	2000
The Perfect Storm	2000
Showing 28 out of 28 rows

---------------------------------------------------------------------------
--Now, restrict the query to only return Spanish-language films.
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Restrict the query to only Spanish-language films
	AND language = 'Spanish';
---------------------------------------------------------------------------------------------------------
query result
films
title	release_year
Tango	1998

---------------------------------------------------------------------------------------------------------
--Finally, amend the query to include all Spanish-language or French-language films with the same criteria.

SELECT title, release_year
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
	AND (budget > 100000000)
-- Amend the query to include Spanish or French-language films
	AND (language = 'Spanish' OR language = 'French');

-------------------------------------------------------
query result
films
title	release_year
Les couloirs du temps: Les visiteurs II	1998
Tango
