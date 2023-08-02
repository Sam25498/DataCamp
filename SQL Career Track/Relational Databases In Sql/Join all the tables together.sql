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
