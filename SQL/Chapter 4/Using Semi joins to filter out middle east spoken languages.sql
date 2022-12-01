-- Select country code for countries in the Middle East
SELECT code
FROM countries
WHERE region in
(SELECT region
FROM countries
WHERE region = 'Middle East'
);
