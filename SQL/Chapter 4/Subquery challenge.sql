--Suppose you're interested in analyzing inflation and unemployment rate for certain countries in 2015.
--You are not interested in countries with "Republic" or "Monarchy" as their form of government, 
-- but are interested in all other forms of government, such as emirate federations, socialist states, and commonwealths.

-- You will use the field gov_form to filter for these two conditions,
-- which represents a country's form of government. You can review the different entries for gov_form in the countries table.

--First Attempt
-- Select relevant fields
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 
  AND code NOT IN
-- Subquery returning country codes filtered on gov_form
	(SELECT gov_form("Republic", "Mornachy")
  FROM countries)
ORDER BY inflation_rate;


-- Second Attempt
-- Select relevant fields
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 
  AND code NOT IN
-- Subquery returning country codes filtered on gov_form
	(SELECT code
  FROM countries
  WHERE gov_form = 'Republic' AND gov_form = 'Mornachy' )
ORDER BY inflation_rate;

--Third attempt worked, but they wanted the use of 'LIKE' clause
-- Select relevant fields
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 
  AND code NOT IN
-- Subquery returning country codes filtered on gov_form
	(SELECT code
  FROM countries
  WHERE gov_form IN('Republic', 'Monarchy' ))
ORDER BY inflation_rate;

--THE fourth and correct attempt 
-- Select relevant fields
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 
  AND code NOT IN
-- Subquery returning country codes filtered on gov_form
	(SELECT code
  FROM countries
  WHERE gov_form LIKE '%Monarchy%'
  OR gov_form LIKE '%Republic%' )
ORDER BY inflation_rate;

--query result
economies
countries

code	inflation_rate	unemployment_rate
AFG	-1.549	null
CHE	-1.14	3.178
PRI	-0.751	12
ROU	-0.596	6.812
TLS	0.553	null
MNE	1.204	null
SRB	1.392	18.2
HKG	3.037	3.296
ARE	4.07	null
MAC	4.564	1.825
LBY	9.839	null
SSD	52.813	null
Showing 12 out of 12 rows
