-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;

----------------------------------------------------------
--query result
films
no_budget_info
Pandoras Box
The Prisoner of Zenda
The Blue Bird
Bambi
State Fair
---------------------------------------------------------------------------------------
  
--Count the number of films with a language associated with them and use the alias count_language_known.
-- Count the number of films we have language data for
SELECT COUNT(*) AS count_language_known
FROM films
WHERE language IS NOT NULL;
-------------------------------------------------------------------------
--query result
films
count_language_known
4957
