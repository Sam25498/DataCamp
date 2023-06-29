--SELECT the fully qualified column names album_id from album and name from artist. Then, join the tables so that only matching rows are returned (non-matches should be discarded).
-- SELECT the fully qualified album_id column from the album table
SELECT 
  album_id,
  title,
  album.artist_id,
  -- SELECT the fully qualified name column from the artist table
  name as artist
FROM album
-- Perform a join to return only rows that match from both tables
INNER JOIN artist ON album.artist_id = artist.artist_id
WHERE album.album_id IN (213,214)
----------------------------------------------------------------------------------

query result
artist
track
album
album_id	title	artist_id	artist
213	Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK	139	The Cult
214	The Doors	140	The Doors

----------------------------------------------------------------------------------------
--To complete the query, join the album table to the track table using the relevant fully qualified album_id column. The album table is on the 
  -- left-hand side of the join, and the additional join should return all matches or NULLs.
SELECT 
  album.album_id,
  title,
  album.artist_id,
  artist.name as artist
FROM album
INNER JOIN artist ON album.artist_id = artist.artist_id
-- Perform the correct join type to return matches or NULLS from the track table
RIGHT JOIN track on track.album_id = album.album_id
WHERE album.album_id IN (213,214)
-----------------------------------------------------------------------------------------------------------------------
query result
artist
track
album
album_id	title	artist_id	artist
213	Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK	139	The Cult
213	Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK	139	The Cult
213	Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK	139	The Cult
213	Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK	139	The Cult
213	Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK	139	The Cult
...
214	The Doors	140	The Doors
214	The Doors	140	The Doors
214	The Doors	140	The Doors
214	The Doors	140	The Doors
214	The Doors	140	The Doors
214	The Doors	140	The Doors
Showing 29 out of 29 rows
