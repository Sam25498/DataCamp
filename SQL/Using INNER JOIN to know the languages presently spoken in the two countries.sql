--Complete the code to perform an INNER JOIN of countries AS c with languages AS l using the code field to obtain the languages currently spoken in the two countries.
SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
FROM languages AS l
INNER JOIN countries AS c
USING(code)
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');
  
  
