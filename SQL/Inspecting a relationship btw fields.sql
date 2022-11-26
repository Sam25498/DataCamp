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

--Rearrange the SELECT statement so that the language column appears on the left and the country column on the right.
-- Sort the results by language.
-- Rearrange SELECT statement, keeping aliases
SELECT l.name AS language, c.name AS country
FROM countries AS c
INNER JOIN languages AS l
USING(code)
-- Order the results by language
ORDER BY language;

-- query result

language	country
Afar	Ethiopia
Afar	Eritrea
Afar	Djibouti
Afrikaans	Namibia
Afrikaans	South Africa
Akyem	Ghana

SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
ORDER BY country;

-- query result
country	language
Afghanistan	Pashto
Afghanistan	Dari
Afghanistan	Turkic
Afghanistan	Other
Albania	Other
Albania	Greek
