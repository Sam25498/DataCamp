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

---------------------------------------------------------------------------------------------

--Qualify the name column by specifying the correct table prefix in both cases.
--Complete both INNER JOIN clauses to join album with track, and artist with album.

SELECT track_id,
-- Enter the correct table name prefix when retrieving the name column from the track table
  track.name AS track_name,
  title as album_title,
  -- Enter the correct table name prefix when retrieving the name column from the artist table
  artist.name AS artist_name
FROM track
  -- Complete the matching columns to join album with track, and artist with album
INNER JOIN album on track.album_id = album.album_id 
INNER JOIN artist on album.artist_id = artist.artist_id;

---------------------------------------------------------------------------------------------------

query result
artist
track
album
track_id	track_name	album_title	artist_name
1	For Those About To Rock (We Salute You)	For Those About To Rock We Salute You	AC/DC
2	Balls to the Wall	Balls to the Wall	Accept
3	Fast As a Shark	Restless and Wild	Accept
4	Restless and Wild	Restless and Wild	Accept
5	Princess of the Dawn	Restless and Wild	Accept
6	Put The Finger On You	For Those About To Rock We Salute You	AC/DC
7	Let's Get It Up	For Those About To Rock We Salute You	AC/DC
