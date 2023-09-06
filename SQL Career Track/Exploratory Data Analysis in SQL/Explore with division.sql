/*Explore with division
In exploring a new database, it can be unclear what the data means and how columns are related to each other.

What information does the unanswered_pct column in the stackoverflow table contain? Is it the percent of questions with the tag that are unanswered (unanswered ?s with tag/all ?s with tag)? Or is it something else, such as the percent of all unanswered questions on the site with the tag (unanswered ?s with tag/all unanswered ?s)?

Divide unanswered_count (unanswered ?s with tag) by question_count (all ?s with tag) to see if the value matches that of unanswered_pct to determine the answer.

Instructions
100 XP
Exclude rows where question_count is 0 to avoid a divide by zero error.
Limit the result to 10 rows.*/
-- Divide unanswered_count by question_count
SELECT unanswered_count/question_count::numeric AS computed_pct, 
       -- What are you comparing the above quantity to?
       unanswered_pct
  FROM stackoverflow
 -- Select rows where question_count is not 0
 WHERE question_count > 0
 LIMIT 10;
------------------------------------------------------
query result
stackoverflow
computed_pct	unanswered_pct
0.46548476454293628809	0.001751857
0.38636363636363636364	0.000116972
0.39376770538243626062	0.000058
0.33189655172413793103	0.0000161
0.42928571428571428571	0.000125312
0.34798961729250068974	0.012886449
0.35083862172255878033	0.007619406
