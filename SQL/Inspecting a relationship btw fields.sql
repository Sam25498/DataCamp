-- Select country and language names, aliased
SELECT c.name AS country, l.name AS language 
-- From countries (aliased)
FROM countries AS c
-- Join to languages (aliased)
INNER JOIN languages AS l
-- Use code as the joining field with the USING keyword
USING(code);

-- query result

country	language
Afghanistan	Dari
Afghanistan	Pashto
Afghanistan	Turkic
Afghanistan	Other
Albania	Albanian
Albania	Greek
Albania	Other
