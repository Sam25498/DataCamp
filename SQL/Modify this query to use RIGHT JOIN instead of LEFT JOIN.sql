-- Modify this query to use RIGHT JOIN instead of LEFT JOIN
SELECT countries.name AS country, languages.name AS language, percent
FROM countries
LEFT JOIN languages
USING(code)
ORDER BY language;

--query result
country	language	percent
Ethiopia	Afar	1.7
Djibouti	Afar	null
Eritrea	Afar	null
Namibia	Afrikaans	10.4
