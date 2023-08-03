--Count the total number of records in the people table, aliasing the result as count_records.

-- Count the number of records in the people table
SELECT COUNT(*) AS count_records
FROM people
--------------------------------
query result
count_records
8397

-------------------------------------
--Count the number of records with a birthdate in the people table, aliasing the result as count_birthdate
-- Count the number of birthdates in the people table
SELECT COUNT(birthdate) AS count_birthdate
FROM people;

-------------------------------------
query result
count_birthdate
6152

-----------------------------------
--Count the records for languages and countries in the films table; alias as count_languages and count_countries.
-- Count the records for languages and countries represented in the films table
SELECT COUNT(language) AS count_languages, COUNT(country) AS count_countries
FROM films;

-----------------------------------
query result
count_languages	count_countries
4957	4966
