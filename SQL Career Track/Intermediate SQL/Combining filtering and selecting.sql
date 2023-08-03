-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE (release_year BETWEEN 1990 AND 1999) AND
-- Filter to English-language films
	(language = 'English') AND
-- Narrow it down to G, PG, and PG-13 certifications
	(certification IN ('G', 'PG', 'PG-13'));

------------------------------------------------------------------------------------
--query result
films
nineties_english_films_for_teens
310
