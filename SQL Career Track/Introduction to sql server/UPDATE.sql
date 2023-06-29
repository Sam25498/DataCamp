--Select the title column from the album table where the album_id is 213.
-- Select the album
SELECT 
  title 
FROM 
  album 
WHERE 
  album_id = 213;
--------------------------------------------------------------------------------
query result
title
Pure Cult: The Best Of The Cult (For Rockers Ravers Lovers & Sinners) UK
------------------------------------------------------------------------------------
--That's a very long album title, isn't it? Use an UPDATE statement to modify the title to 'Pure Cult: The Best Of The Cult'.
-- Run the query
SELECT 
  title 
FROM 
  album 
WHERE 
  album_id = 213;
-- UPDATE the album table
UPDATE
  album
-- SET the new title    
SET 
  title = 'Pure Cult: The Best Of The Cult'
WHERE album_id = 213;
-----------------------------------------------------------------------------
-- Select the album
SELECT 
  title 
FROM 
  album 
WHERE 
  album_id = 213;
-- UPDATE the title of the album
UPDATE 
  album 
SET 
  title = 'Pure Cult: The Best Of The Cult' 
WHERE 
  album_id = 213;
-- Run the query again
SELECT 
  title 
FROM 
  album
WHERE 
  album_id = 213;
-------------------------------------------------------------------------------------
query result
album
title
Pure Cult: The Best Of The Cult
