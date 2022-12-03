---Say you are interested in determining the number of languages spoken for each country. 
--You want to present this information alongside each country's local_name, which is a field only present in the countries table and not in the languages table. 
--You'll use a subquery inside FROM to bring information from these two tables together!

--first try
-- Select code, and language count as lang_num
SELECT code, lang_num
FROM countries,
    (SELECT 
    COUNT(languages.name) 
    AS lang_num
    FROM languages
    GROUP BY code) as sub
WHERE countries.code = sub.code;

--second try
-- Select code, and language count as lang_num
SELECT code, COUNT(languages.name) 
    AS lang_num
FROM languages,
    
---last and final answer
-- Select code, and language count as lang_num
SELECT code, COUNT(*) AS lang_num
FROM languages
GROUP BY code;

---query result
languages
countries

code	lang_num
PRY	2
NRU	3
MDG	3


---Select local_name from countries, with the aliased lang_num from your subquery (which has been nested and aliased for you as sub).
---Use WHERE to match the code field from countries and sub.

-- Select local_name and lang_num from appropriate tables
SELECT local_name FROM countries
FROM languages,
  (SELECT code, COUNT(*) AS lang_num
  FROM languages
  GROUP BY code) AS sub
-- Where codes match
WHERE countries.code = sub.code
ORDER BY lang_num DESC;
ASM	5
...
KHM	2
NPL	14
IND	14
EGY	2
Showing 100 out of 212 rows

---Select local_name from countries, with the aliased lang_num from your subquery (which has been nested and aliased for you as sub).
--Use WHERE to match the code field from countries and sub.
-- Select local_name and lang_num from appropriate tables
--first try
-- Select local_name and lang_num from appropriate tables
SELECT local_name FROM countries
FROM languages,
  (SELECT code, COUNT(*) AS lang_num
  FROM languages
  GROUP BY code) AS sub
-- Where codes match
WHERE countries.code = sub.code
ORDER BY lang_num DESC;


--correctt soln'
SELECT local_name, sub.lang_num
FROM countries,
    (SELECT code, COUNT(*) AS lang_num
     FROM languages
     GROUP BY code) AS sub
-- Where codes match    
WHERE countries.code = sub.code
ORDER BY lang_num DESC;
