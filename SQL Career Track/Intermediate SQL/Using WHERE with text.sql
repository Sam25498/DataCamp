-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';

-------------------------------------------------------------
query result
films
count_spanish
40
