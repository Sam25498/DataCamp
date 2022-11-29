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
