-- Select country code for countries in the Middle East
-- Select country code for countries in the Middle East
SELECT code
FROM countries
WHERE region = 'Middle East';

--query result
languages
countries

code
ARE
ARM
AZE
BHR
...
OMN
QAT
SAU
SYR
TUR
PSE
Showing 18 out of 18 rows

--Write a second query to SELECT the name of each unique language appearing in the languages table; do not use column aliases here.
--Order the result set by name in ascending order.
-- Select unique language names
SELECT DISTINCT name
FROM languages
-- Order by the name of the language
ORDER BY name ASC;

--query result
languages
countries

name
Afar
Afrikaans
Akyem
Albanian
Alsatian
...
Echuwabo
Elomwe
Emakhuwa
English
English patois
Estonian
Ewe
Showing 100 out of 396 rows

--Create a semi join out of the two queries you've written, which filters unique languages returned in the first query for only those languages spoken in the 'Middle East'.
SELECT DISTINCT name
FROM languages
-- Add syntax to use bracketed subquery below as a filter
WHERE code in 
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;
