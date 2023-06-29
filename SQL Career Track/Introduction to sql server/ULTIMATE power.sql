SELECT  album.title AS album_title,
  artist.name as artist,
  MAX(track.milliseconds / (1000 * 60) % 60 ) AS max_track_length_mins
-- Name the temp table #maxtracks
INTO #maxtracks
FROM album
-- Join album to artist using artist_id
INNER JOIN artist ON album.artist_id = artist.artist_id
-- Join track to album using album_id
INNER JOIN track ON album.album_id = track.album_id
GROUP BY artist.artist_id, album.title, artist.name, album.album_id
-- Run the final SELECT query to retrieve the results from the temporary table
SELECT album_title, artist, max_track_length_mins
FROM  #maxtracks
ORDER BY max_track_length_mins DESC, artist;
-----------------------------------------------------------
query result

rock_tracks
album_title	artist	max_track_length_mins
Battlestar Galactica (Classic) Season 1	Battlestar Galactica (Classic)
	49
Battlestar Galactica Season 3	Battlestar Galactica
	47
Lost Season 2	Lost
	47
Heroes Season 1	Heroes
	44
Battlestar Galactica: The Story So Far	Battlestar Galactica
	43
Lost Season 1	Lost
	43
Lost Season 3	Lost
	43
LOST Season 4	Lost
	43
The Office Season 3	The Office
	42
Aquaman	Aquaman
	41
The Office Season 2	The Office
	28
The Song Remains The Same (Disc 1)	Led Zeppelin
	26
The Office Season 1	The Office
	23
The Final Concerts (Disc 2)	Deep Purple
	19
BBC Sessions Disc 2 Live	Led Zeppelin
	18
Santana Live	Santana
	17
The Essential Miles Davis Disc 2	Miles Davis
	15
