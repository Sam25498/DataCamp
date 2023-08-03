--Return the unique countries represented in the films table using DISTINCT.

-- Return the unique countries from the films table
SELECT DISTINCT country
FROM films;
-------------------------------------
--query result
country
null
Soviet Union
Indonesia
Italy
Cameroon
...
Czech Republic
Sweden
Showing 65 out of 65 rows
-----------------------------------
--Return the number of unique countries represented in the films table, aliased as count_distinct_countries.
-- Count the distinct countries from the films table
SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films;

---------------------------------------
query result
films
count_distinct_countries
64
