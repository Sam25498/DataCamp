/*
What is a tsvector?
You saw how to convert strings to tsvector and tsquery in the video and, in this exercise, we are going to dive deeper into what these functions actually return after converting a string to a tsvector. In this example, you will convert a text column from the film table to a tsvector and inspect the results. Understanding how full-text search works is the first step in more advanced machine learning and data science concepts like natural language processing.

Instructions
100 XP
Select the film description and convert it to a tsvector data type.
*/
------------------------------
--My first wrong attempt
----------------------------

-- Select the film description as a tsvector
SELECT tsvector(description)
FROM film;
----------------------------------------
query result
film
tsvector
'A' 'And' 'Display' 'Fateful' 'Georgia' 'Mad' 'Outgun' 'Scientist' 'Shark' 'Soviet' 'Womanizer' 'a' 'in' 'must' 'of' 'who'
'A' 'Ancient' 'And' 'Awe-Inspiring' 'Boy' 'China' 'Defeat' 'Epistle' 'Squirrel' 'Student' 'a' 'in' 'must' 'of' 'who'
'A' 'Abandoned' 'An' 'And' 'Astounding' 'Character' 'Fun' 'House' 'Mad' 'Madman' 'Meet' 'Robot' 'Scientist' 'Study' 'a' 'in' 'must' 'of' 'who'
'A' 'And' 'Berlin' 'Drama' 'Husband' 'Outrace' 'Student' 'Sumo' 'Unbelieveable' 'Wrestler' 'a' 'in' 'must' 'of' 'who'
'A' 'And' 'Boat' 'Character' 'Emotional' 'Explorer' 'Find' 'Pioneer' 'Shark' 'Study' 'Tank' 'a' 'in' 'must' 'of' 'who'
'A' 'And' 'Cat' 'Emotional' 'First' 'Man' 'Manned' 'Meet' 'Reflection' 'Space' 'Station' 'Teacher' 'The' 'a' 'in' 'must' 'of' 'who'
'A' 'Ancient' 'And' 'Astronaut' 'Fast-Paced' 'Feminist' 'Frisbee' 'India' 'Overcome' 'Saga' 'a' 'in' 'must' 'of' 'who'
----------------------------------------
123
------------------------------
--The correct answer
----------------------------
-- Select the film description as a tsvector
SELECT to_tsvector(description)
FROM film;
--------------------------------------------
query result
film
to_tsvector
'display':3 'fate':2 'georgia':19 'mad':9 'must':12 'outgun':13 'scientist':10 'shark':16 'soviet':18 'woman':6
'ancient':18 'awe':3 'awe-inspir':2 'boy':16 'china':19 'defeat':14 'epistl':5 'inspir':4 'must':13 'squirrel':11 'student':8
'abandon':19 'astound':2 'charact':3 'fun':20 'hous':21 'mad':15 'madman':7 'meet':13 'must':12 'robot':10 'scientist':16 'studi':4
'berlin':17 'drama':3 'husband':9 'must':11 'outrac':12 'student':6 'sumo':14 'unbeliev':2 'wrestler':15
'boat':7 'charact':3 'emot':2 'explor':15 'find':13 'must':12 'pioneer':10 'shark':18 'studi':4 'tank':19
'cat':14 'emot':2 'first':17 'man':9,18 'meet':12 'must':11 'reflect':3 'space':19 'station':20 'teacher':6
'ancient':18 'astronaut':11 'fast':3 'fast-pac':2 'feminist':16 'frisbe':8 'india':19 'must':13 'overcom':14 'pace':4 'saga':5
