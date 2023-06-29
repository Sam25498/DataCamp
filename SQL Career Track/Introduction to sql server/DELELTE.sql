--Hit 'Submit Answer' to run the query and view the existing data.
-- Run the query
SELECT 
  * 
FROM 
  album
------------------------------------------
query result
track
album
album_id	title	artist_id
1	For Those About To Rock We Salute You	1
2	Balls to the Wall	2
3	Restless and Wild	2
4	Let There Be Rock	1
5	Big Ones	3
6	Jagged Little Pill	4
...
  95	A Real Dead One	90
96	A Real Live One	90
97	Brave New World	90
98	Dance Of Death	90
99	Fear Of The Dark	90
100	Iron Maiden	90
Showing 100 out of 347 rows
----------------------------------------
--DELETE the record from album where album_id is 1 and then hit 'Submit Answer'.
-- Run the query
SELECT 
  * 
FROM 
  album 
  -- DELETE the record
DELETE FROM 
  album 
WHERE 
  album_id = 1 
  -- Run the query again
SELECT 
  * 
FROM 
  album;
------------------------------------------------------
query result
track
album
album_id	title	artist_id
2	Balls to the Wall	2
3	Restless and Wild	2
4	Let There Be Rock	1
5	Big Ones	3
6	Jagged Little Pill	4
7	Facelift	5
