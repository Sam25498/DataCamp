-- Join all tables
SELECT *
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
JOIN organizations
ON affiliations.organization_id = organizations.id
JOIN universities
ON professors.university_id = universities.id;
----------------------------------------------------------
query result
function	organization_id	professor_id	id	firstname	lastname	university_id	id	organization_sector	id	university	university_city
NA	CIHA	442	442	Peter	Schneemann	UBE	CIHA	Not classifiable	UBE	Uni Bern	Bern
Panel Member 	SNF Ambizione Program	1	1	Karl	Aberer	EPF	SNF Ambizione Program	Education & research	EPF	ETH Lausanne	Lausanne
Member of Conseil Fondation IDIAP	Fondation IDIAP	1	1	Karl	Aberer	EPF	Fondation IDIAP	Education & research	EPF	ETH Lausanne	Lausanne
Member Conseil of Zeno-Karl Schindler Foundation	Zeno-Karl Schindler Foundation	1	1	Karl	Aberer	EPF	Zeno-Karl Schindler Foundation	Education & research	EPF	ETH Lausanne	Lausanne
Chairman of L3S Advisory Board	L3S Advisory Board	1	1	Karl	Aberer	EPF	L3S Advisory Board	Education & research	EPF	ETH Lausanne	Lausanne
Aufsichtsratsmandat

------------------------------------------------------------------------------
--Now group the result by organization sector, professor, and university city.
--Count the resulting number of rows.
-- Group the table by organization sector, professor ID and university city
SELECT COUNT(*), organizations.organization_sector, 
professors.id, universities.university_city
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
JOIN organizations
ON affiliations.organization_id = organizations.id
JOIN universities
ON professors.university_id = universities.id
GROUP BY organizations.organization_sector, 
professors.id, universities.university_city;

---------------------------------------------------------------------
count	organization_sector	id	university_city
1	Not classifiable	47	Basel
2	Media & communication	361	Saint Gallen
1	Education & research	140	Zurich
2	Industry, construction & agriculture	536	Saint Gallen
1	Politics, administration, justice system & security sector	188	Lausanne
1	Consulting, public relations, legal & trust	12	Saint Gallen
1	Society, Social, Culture & Sports	290	Bern
----------------------------
--Only retain rows with "Media & communication" as organization sector, and sort the table by count, in descending order.

-- Filter the table and sort it
SELECT COUNT(*), organizations.organization_sector, 
professors.id, universities.university_city
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
JOIN organizations
ON affiliations.organization_id = organizations.id
JOIN universities
ON professors.university_id = universities.id
WHERE organizations.organization_sector = 'Media & communication'
GROUP BY organizations.organization_sector, 
professors.id, universities.university_city
ORDER BY COUNT DESC;
-------------------------------------------------------
--QUERY RESULT
count	organization_sector	id	university_city
4	Media & communication	538	Lausanne
3	Media & communication	365	Saint Gallen
3	Media & communication	36	Lausanne
2	Media & communication	329	Zurich
2	Media & communication	523	Saint Gallen
2	Media & communication	425	Lausanne
2	Media & communication	505	Lausanne
