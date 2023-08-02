--First, find out the number of rows in universities.
-- Count the number of rows in universities
SELECT COUNT(*)
FROM universities;
-----------------------------
query result
count
11
-----------------------------------
--Then, find out how many unique values there are in the university_city column.
SELECT COUNT(DISTINCT(university_city)) 
FROM universities;
------------------------------------
--query result
count
9
