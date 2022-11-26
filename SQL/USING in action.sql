-- Use the country code field to complete the INNER JOIN with USING; do not change any alias names.
SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
USING(code);

--query result
countries languages

country	language	official
Afghanistan	Dari	true
Afghanistan	Pashto	true
Afghanistan	Turkic	false
Afghanistan	Other	false
Albania	Albanian	true
Albania	Greek	false
