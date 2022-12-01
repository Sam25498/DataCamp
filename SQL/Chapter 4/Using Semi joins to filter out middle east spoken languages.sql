-- Select country code for countries in the Middle East
SELECT code
FROM countries
WHERE region in
(SELECT region
FROM countries
WHERE region = 'Middle East'
);

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
