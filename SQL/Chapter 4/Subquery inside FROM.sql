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
ASM	5
...
KHM	2
NPL	14
IND	14
EGY	2
Showing 100 out of 212 rows
