-- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year IN (1990,2000) AND 
    (duration > 120);
-------------------------------
query result
films
title	release_year
Dances with Wolves	1990
Die Hard 2	1990
Ghost	1990
Goodfellas	1990
Mo' Better Blues	1990
Pretty Woman	1990'
-------------------------------------------------------------------------------
--Select the title and language of all films in English, Spanish, or French using IN.

-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');

-------------------------------------------------------

query result
films
title	language
The Broadway Melody	English
Hell's Angels	English
A Farewell to Arms	English
42nd Street	English
She Done Him Wrong	English
It Happened One Night	English
Top Hat'

-----------------------------------------------------------------------------------------
--Select the title, certification and language of all films certified NC-17 or R that are in English, Italian, or Greek.
-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17','R') AND 
    (language IN ('English','Italian','Greek'));
-----------------------------------------------------------------------------------------------
title	certification	language
Psycho	R	English
A Fistful of Dollars	R	Italian
Rosemary's Baby	R	English
The Wild Bunch	R	English
Catch-22	R	English
Cotton Comes to Harlem	R	English
The Ballad of Cable Hogue
