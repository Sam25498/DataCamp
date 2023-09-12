SELECT name,  -- Report the name, nationality and the year of birth
       nationality, 
       year_of_birth
FROM actors
WHERE nationality NOT IN('USA'); -- Of all actors who are not from the USA
----------------------------------------------------
query result
actors
name	nationality	year_of_birth
Abbie Cornish	Australia	1982
Andrea Riseborough	British	1981
Anthony Hopkins	British	1937
Barkhad Abdi	Somalia	1985
Barry Pepper	Canada	1970
Benicio Del Toro	Puerto Rico	1967
Bill Nighy	British	1949
-----------------------------------------
---Report the name, nationality and the year of birth of all actors who were born after 1990.

SELECT name, 
       nationality, 
       year_of_birth
FROM actors
WHERE year_of_birth > '1990'; -- Born after 1990
------------------------------------------------------
query result
actors
name	nationality	year_of_birth
Annasophia Robb	USA	1993
Freddie Highmore	British	1992
Josh Hutcherson	USA	1992
-----------------------------------------------
--Select all actors who are not from the USA and all actors who are born after 1990.

SELECT name, 
       nationality, 
       year_of_birth
FROM actors
WHERE nationality <> 'USA'
UNION -- Select all actors who are not from the USA and all actors who are born after 1990
SELECT name, 
       nationality, 
       year_of_birth
FROM actors
WHERE year_of_birth > 1990;
------------------------------------------------
query result
actors
name	nationality	year_of_birth
Cate Blanchett	Australia	1969
Julie Christie	British	1940
Emma Watson	British	1990
Sean Bean	British	1959
Freddie Highmore	British	1992
Eddie Redmayne	British	1982
Ian McKellen	British	1939
----------------------------------------------------
--Select all actors who are not from the USA and who are also born after 1990.
SELECT name, 
       nationality, 
       year_of_birth
FROM actors
WHERE nationality <> 'USA'
INTERSECT -- Select all actors who are not from the USA and who are also born after 1990
SELECT name, 
       nationality, 
       year_of_birth
FROM actors
WHERE year_of_birth > 1990;
----------------------------------------------------------------
query result
actors
name	nationality	year_of_birth
Freddie Highmore	British	1992
