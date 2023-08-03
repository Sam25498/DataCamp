
-- Select the release year, duration, and title sorted by release year and duration
SELECT release_year, duration, title
FROM films
ORDER BY release_year ASC, duration ASC;
-------------------------------------------------
query result

release_year	duration	title
1916	123	Intolerance: Love's Struggle Throughout the Ages
1920	110	Over the Hill to the Poorhouse
1925	151	The Big Parade
1927	145	Metropolis
1929	100	The Broadway Melody
1929	110	Pandora's Box

----------------------------------------------------------------------

-- Select the certification, release year, and title sorted by certification and release year
SELECT certification, release_year, title
FROM films
ORDER BY certification ASC, release_year DESC;

----------------------------------------------------------------------
query result

certification	release_year	title
Approved	1967	In Cold Blood
Approved	1967	You Only Live Twice
Approved	1967	Point Blank
Approved	1966	A Funny Thing Happened on the Way to the Forum
Approved	1966	Batman: The Movie
Approved	1966	A Man for All Seasons
Approved	1966	Torn Curtain
