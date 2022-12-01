--Begin your anti join by returning the code and name (in order, not aliased) for all countries in the continent of Oceania from the countries table.v
-- Select code and name of countries from Oceania
SELECT code, name
FROM countries
WHERE continent LIKE 'Oceania';

--query result
currencies
countries

code	name
ASM	American Samoa
AUS	Australia
FJI	Fiji Islands
GUM	Guam
...
TON	Tonga
TUV	Tuvalu
NCL	New Caledonia
NZL	New Zealand
VUT	Vanuatu
Showing 19 out of 19 rows

-- Complete your anti join by adding an additional filter to return every country code that is not included in the currencies table.
SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
  AND code NOT IN
    (SELECT code
    FROM currencies);
--query result
currencies
countries

code	name
ASM	American Samoa
FJI	Fiji Islands
GUM	Guam
FSM	Micronesia, Federated States of
MNP	Northern Mariana Islands
Showing 5 out of 5 rows
