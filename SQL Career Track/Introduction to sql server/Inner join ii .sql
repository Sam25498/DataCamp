--Select the album_id and title columns from album (the main source table name).
-- Select the name column from artist and alias it as artist.
-- Identify a common column between the album and artist tables and perform an inner join.

-- Select album_id and title from album, and name from artist
SELECT 
  album_id,
  title,
  name AS artist
  -- Enter the main source table name
FROM album
  -- Perform the inner join
INNER JOIN artist on artist.artist_id = album.artist_id;
-------------------------------------------------------------------------------------------
query result
album
artist
album_id	title	artist
1	For Those About To Rock We Salute You	AC/DC
2	Balls to the Wall	Accept
3	Restless and Wild	Accept
4	Let There Be Rock	AC/DC
5	Big Ones	Aerosmith
6	Jagged Little Pill	Alanis Morissette
7	Facelift	Alice In Chains
