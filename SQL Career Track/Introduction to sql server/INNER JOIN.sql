--Perform an inner join between album and track using the album_id column.
SELECT 
  track_id,
  name AS track_name,
  title AS album_title
FROM track
  -- Complete the join type and the common joining column
INNER JOIN album on track.album_id = album.album_id;

------------------------------------------------------

query result
track
album
track_id	track_name	album_title
1	For Those About To Rock (We Salute You)	For Those About To Rock We Salute You
2	Balls to the Wall	Balls to the Wall
3	Fast As a Shark	Restless and Wild
4	Restless and Wild	Restless and Wild
5	Princess of the Dawn	Restless and Wild
6	Put The Finger On You	For Those About To Rock We Salute You
7	Let's Get It Up	For Those About To Rock We Salute You
