--Select all artists beginning with B who released tracks in 1986, but also retrieve any records where the release_year is greater than 1990.
SELECT 
  artist, 
  release_year, 
  song 
FROM 
  songlist 
  -- Choose the correct artist and specify the release year
WHERE 
  (
    artist LIKE 'B%' 
    AND release_year = 1986
  ) 
  -- Or return all songs released after 1990
  OR release_year > 1990 
  -- Order the results
ORDER BY 
  release_year, 
  artist, 
  song;
  ----------------------------------------------------------------------------
  query result
songlist
artist	release_year	song
Beastie Boys	1986	(You Gotta) Fight for Your Right (To Party)
Beastie Boys	1986	No Sleep Till Brooklyn
Bon Jovi	1986	Livin On A Prayer
Bon Jovi	1986	Wanted Dead or Alive
Bon Jovi	1986	You Give Love A Bad Name
Boston	1986	Amanda
Bruce Hornsby & The Range	1986	The Way It Is
...
he Offspring	1994	Come Out and Play
The Offspring	1994	Self Esteem
Tom Petty & The Heartbreakers	1994	You Dont Know How It Feels
Tom Petty & The Heartbreakers	1994	You Wreck Me
Weezer	1994	Buddy Holly
AC/DC	1995	Hard As A Rock
Alanis Morissette	1995	Hand In My Pocket
Showing 100 out of 190 rows
