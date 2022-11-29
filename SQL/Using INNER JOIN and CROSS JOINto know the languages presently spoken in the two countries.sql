--Complete the code to perform an INNER JOIN of countries AS c with languages AS l using the code field to obtain the languages currently spoken in the two countries.
SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
FROM languages AS l
INNER JOIN countries AS c
USING(code)
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');
	
 --query result
country	language
India	Hindi
India	Bengali
India	Telugu
India	Marathi
India	Tamil
India	Urdu 
...
Pakistan	Hindko
Pakistan	Brahui
Pakistan	English
Pakistan	Burushaski
Pakistan	Other
Showing 25 out of 25 rows

--Change your INNER JOIN to a different kind of join to look at possible combinations of languages that could have been spoken in the two countries given their history.
--Observe the differences in output for both joins.

SELECT c.name AS country, l.name AS language
FROM countries AS c        
-- Perform a cross join to languages (alias as l)
CROSS JOIN languages AS l
WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');
