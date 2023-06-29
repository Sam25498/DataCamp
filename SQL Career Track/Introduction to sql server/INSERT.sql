-- Create a table called tracks with 2 VARCHAR columns named track and album, and one integer column named track_length_mins. Then SELECT all columns from your new table using the * shortcut to verify the table structure.
-- Create the table
CREATE TABLE tracks(
	-- Create track column
	track VARCHAR(200),
    -- Create album column
  	album VARCHAR(160),
	-- Create track_length_mins column
	track_length_mins INT
);
-- Select all columns from the new table
SELECT 
  * 
FROM 
  tracks;
-----------------------------------------------------------------------------------
--Insert the track 'Basket Case', from the album 'Dookie', with a track length of 3, into the appropriate columns. Then perform the SELECT * once more to view your newly inserted row.
-- Create the table
CREATE TABLE tracks(
  -- Create track column
  track VARCHAR(200), 
  -- Create album column
  album VARCHAR(160), 
  -- Create track_length_mins column
  track_length_mins INT
);
-- Complete the statement to enter the data to the table         
INSERT INTO tracks
-- Specify the destination columns
(track ,album , track_length_mins)
-- Insert the appropriate values for track, album and track length
VALUES('Basket Case', 'Dookie', 3)
-- Select all columns from the new table
SELECT 
  *
FROM 
  tracks;
-------------------------------------------------------------------------------
query result

track	album	track_length_mins
Basket Case	Dookie	3
