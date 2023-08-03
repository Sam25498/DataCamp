-- Round the average number of facebook_likes to one decimal place
SELECT ROUND(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM reviews;

-----------------------------------------------------------------
query result
reviews
avg_facebook_likes
7802.9

--   //////////////////////////////////////////////////////////////////////////////////////
--  ///////////////////      ROUND() with a negative parameter     ///////////////////////
-- //////////////////////////////////////////////////////////////////////////////////////

-- Calculate the average budget rounded to the thousands
SELECT ROUND(AVG(budget), -3) AS avg_budget_thousands
FROM films;


-----------------------------------------------------------------
query result
films
avg_budget_thousands
39903000
