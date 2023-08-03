-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';
------------------------------------------------------
query result
people
name
B.J. Novak
Babak Najafi
Babar Ahmed
Bahare Seddiqi
Bai Ling
Bailee Madison
-------------------------------------------------------
--Select the names of people whose names have 'r' as the second letter.
SELECT name
FROM people
-- Select the names that have r as the second letter
WHERE name LIKE '_r%';
----------------------------------------------------------------
--query result
people
name
Ara Celi
Aramis Knight
Arben Bajraktaraj
Arcelia Ramírez
Archie Kao

------------------------------------------------------------------
--Select the names of people whose names don't start with 'A'.
SELECT name
FROM people
-- Select names that don't start with A
WHERE name NOT LIKE 'A%';

---------------------------------------------------------------
query result
people
name
50 Cent
Álex Angulo
Álex de la Iglesia
Ángela Molina
B.J. Novak
Babak Najafi
Babar Ahmed
-------------------------------------------------
