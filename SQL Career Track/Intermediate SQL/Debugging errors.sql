-- Debug this code
SELECT certfication
FROM films
LIMIT 5;

-----------------------------------
column "certfication" does not exist
LINE 2: SELECT certfication
               ^
HINT:  Perhaps you meant to reference the column "films.certification".
  
-----------------------------------

  -- Debug this code
SELECT certification
FROM films
LIMIT 5;
-----------------------------------
--query result
certification
Not Rated
null
Not Rated
Not Rated
Not Rated
-----------------------------------

--Find the two errors in this code; the same error has been repeated twice.
-- Debug this code
SELECT film_id imdb_score num_votes
FROM reviews;
-----------------------------------
syntax error at or near "num_votes"
LINE 2: SELECT film_id imdb_score num_votes
                                  ^
-----------------------------------
-- Debug this code
SELECT film_id, imdb_score, num_votes
FROM reviews;
-----------------------------------

query result
film_id	imdb_score	num_votes
3934	7.1	203461
3405	6.4	149998
478	3.2	8465
74	7.6	7071
1254	8	241030
740	6.4	64742
------------------------------------
--Find the two bugs in this final query.
-- Debug this code
SELECT COUNNT(birthdate) AS count_birthdays
FROM peeple;
------------------------------------
relation "peeple" does not exist
LINE 3: FROM peeple;
             ^
-------------------------------------
-- Debug this code
SELECT COUNT(birthdate) AS count_birthdays
FROM people;
-------------------------------------
query result
count_birthdays
6152
