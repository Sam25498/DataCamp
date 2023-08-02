-- Count the total number of affiliations per university
SELECT COUNT(*), professors.university_id 
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
-- Group by the university ids of professors
GROUP BY professors.university_id
ORDER BY count DESC;

----------------------------------------------
--query result
count	university_id
579	EPF
273	USG
162	UBE
133	ETH
75	UBA
40	UFR
36	UNE
35	ULA
33	UGE
7	UZH
4	USI
