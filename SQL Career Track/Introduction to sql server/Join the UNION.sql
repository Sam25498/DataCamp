--Make the first selection from the album table. Then join the results by providing the relevant keyword and selecting from the artist table.
SELECT 
  album_id AS ID,
  title AS description,
  'Album' AS Source
  -- Complete the FROM statement
FROM
  Album
 -- Combine the result set using the relevant keyword
UNION
SELECT 
  artist_id AS ID,
  name AS description,
  'Artist'  AS Source
  -- Complete the FROM statement
FROM Artist;
-------------------------------------------------------------------------------------------
query result
artist
album
ID	description	Source
1	AC/DC
	Artist
1	For Those About To Rock We Salute You	Album
2	Accept
	Artist
2	Balls to the Wall	Album
3	Aerosmith
	Artist
...
47	The Best of Ed Motta	Album
48	Barao Vermelho
	Artist
48	The Essential Miles Davis Disc 1	Album
49	Edson DJ Marky & DJ Patife Featuring Fernanda Porto
	Artist
49	The Essential Miles Davis Disc 2	Album
50	Metallica
	Artist
50	The Final Concerts (Disc 2)	Album
Showing 100 out of 622 rows
