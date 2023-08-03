-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year
FROM films
WHERE release_year < 2000 AND language = 'German';
-------------------------------------------------------
query result
films
title	release_year
Metropolis	1927
Pandoras Box	1929
The Torture Chamber of Dr. Sadism	1967
Das Boot	1981
Run Lola Run	1998
Aimee & Jaguar	1999

-----------------------------------------------------------
-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';
-------------------------------------------------------------------------
query result
films
title	release_year
Good Bye Lenin!	2003
Downfall	2004
Summer Storm	2004
The Lives of Others	2006
The Baader Meinhof Complex	2008
The Wave	2008
----------------------------------------------------------------------------------------
-- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE release_year > 2000 AND release_year < 2010
	AND language = 'German';
--------------------------------------------------------------------------------------------------
query result
films
id	title	release_year	country	duration	language	certification	gross	budget
1952	Good Bye Lenin!	2003	Germany	121	German	R	4063859	4800000
2130	Downfall	2004	Germany	178	German	R	5501940	13500000
2224	Summer Storm	2004	Germany	98	German	R	95016	2700000
2709	The Lives of Others	2006	Germany	137	German	R	11284657	2000000
3100	The Baader Meinhof Complex	2008	Germany	184	German	R	476270	20000000
3143	The Wave	2008	Germany	107	German	null	null	5000000
3220	Cargo	2009	Switzerland	112	German	null	null	4500000
3346	Soul Kitchen	2009	Germany	99	German	null	274385	4000000
3412	The White Ribbon	2009	Germany	144	German	R	2222647	12000000
Showing 9 out of 9 rows

