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
