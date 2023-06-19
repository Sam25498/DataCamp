--Retrieve the song, artist, and release_year columns from the songlist table
-- Retrieve the song, artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year
FROM
  songlist;
  ------------------------------------------------------
  query result
songlist
song	artist	release_year
Keep On Loving You	REO Speedwagon	1980
Keep Pushin  1977	REO Speedwagon	null
Like You Do	REO Speedwagon	null
Ridin the Storm Out	REO Speedwagon	null
Roll With the Changes	REO Speedwagon	null
Take It on the Run	REO Speedwagon	1981
-------------------------------------------------
--Make sure there are no NULL values in the release_year column.
-- Retrieve the song, artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
WHERE  
  release_year IS NOT NULL;
  -----------------------------------------------
  query result
songlist
song	artist	release_year
Keep On Loving You	REO Speedwagon	1980
Take It on the Run	REO Speedwagon	1981
Jessies Girl	Rick Springfield	1981
Back Off Boogaloo	Ringo Starr	1972
Early 1970 [*]	Ringo Starr	1971
It Dont Come Easy	Ringo Starr	1971
No No Song	Ringo Starr	1974

--------------------------------------------------------------
--Order the results by artist and release_year.
-- Retrieve the song,artist and release_year columns
SELECT 
  song, 
  artist, 
  release_year 
FROM 
  songlist 
  -- Ensure there are no missing or unknown values in the release_year column
WHERE 
  release_year IS NOT NULL 
  -- Arrange the results by the artist and release_year columns
ORDER BY 
  artist, 
  release_year;
----------------------------------------------------------------------
query result
songlist
song	artist	release_year
Rockin Into the Night	.38 Special	1980
Hold On Loosely	.38 Special	1981
Caught Up in You	.38 Special	1982
Art For Arts Sake	10cc	1975
Kryptonite	3 Doors Down	2000
Loser	3 Doors Down	2000
When Im Gone	3 Doors Down	2002
Whats Up?	4 Non Blondes	1992
Take On Me	a-ha	1985
Its A Long Way To The Top	AC/DC	1975
...
Like a Stone	Audioslave	2002
Turn Up the Radio	Autograph	1984
Let It Ride	Bachman-Turner Overdrive	1973
Takin Care Of Business	Bachman-Turner Overdrive	1973
You Aint Seen Nothin Yet	Bachman-Turner Overdrive	1974
Bad Company	Bad Company	1974
Cant Get Enough	Bad Company	1974
Seagull	Bad Company	1974
Showing 100 out of 1621 rows

--Extend the WHERE clause so that the results are those with a release_year greater than or equal to 1980 and less than or equal to 1990.
SELECT 
  song, 
  artist, 
  release_year
FROM 
  songlist 
WHERE 
  -- Retrieve records greater than and including 1980
  release_year >= 1980 
  -- Replace AND with OR
  AND release_year <= 1990 
ORDER BY 
  artist, 
  release_year;
  
  -----------------------------------------------------------------------------------
  query result
songlist
song	artist	release_year
Rockin Into the Night	.38 Special	1980
Hold On Loosely	.38 Special	1981
Caught Up in You	.38 Special	1982
Take On Me	a-ha	1985
Back In Black	AC/DC	1980
Have a Drink On Me	AC/DC	1980
...
Hysteria	Def Leppard	1987
Love Bites	Def Leppard	1987
Enjoy the Silence	Depeche Mode	1990
Romeo And Juliet	Dire Straits	1980
Expresso Love	Dire Straits	1980
Industrial Disease	Dire Straits	1982
Showing 100 out of 489 rows

-----------------------------------------------------------------------------------------
--Update your query to use an OR instead of an AND.
SELECT 
  song, 
  artist, 
  release_year
FROM 
  songlist 
WHERE 
  -- Retrieve records greater than and including 1980
  release_year >= 1980 
  -- Replace AND with OR
  OR release_year <= 1990 
ORDER BY 
  artist, 
  release_year;
  -----------------------------------------------------------------------------------
  query result
songlist
song	artist	release_year
Rockin Into the Night	.38 Special	1980
Hold On Loosely	.38 Special	1981
Caught Up in You	.38 Special	1982
Art For Arts Sake	10cc	1975
Kryptonite	3 Doors Down	2000
Loser	3 Doors Down	2000
When Im Gone	3 Doors Down	2002
Whats Up?	4 Non Blondes	1992
Take On Me	a-ha	1985
Its A Long Way To The Top	AC/DC	1975
...
Let It Ride	Bachman-Turner Overdrive	1973
Takin Care Of Business	Bachman-Turner Overdrive	1973
You Aint Seen Nothin Yet	Bachman-Turner Overdrive	1974
Bad Company	Bad Company	1974
Cant Get Enough	Bad Company	1974
Seagull	Bad Company	1974
Showing 100 out of 1621 rows
