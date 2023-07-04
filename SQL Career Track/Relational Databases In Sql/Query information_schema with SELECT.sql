--Get information on all table names in the current database, while limiting your query to the 'public' table_schema.
-- Query the right table in information_schema
SELECT table_name 
FROM information_schema.tables
-- Specify the correct table_schema value
WHERE table_schema = 'public';
-----------------------------------------------------
--query result
university_professors
table_name
university_professors

--------------------------------------------------------------
--Now have a look at the columns in university_professors by selecting all entries in information_schema.columns that correspond to that table.
-- Query the right table in information_schema to get columns
SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'university_professors' AND table_schema = 'public';
---------------------------------------------------------------------------------------
--query result
university_professors
column_name	data_type
firstname	text
lastname	text
university	text
university_shortname	text
university_city	text
function	text
organization	text
organization_sector	text
--Showing 8 out of 8 rows
-------------------------------------------------------------------------
--Finally, print the first five rows of the university_professors table.
-- Query the first five rows of our table
SELECT * 
FROM university_professors 
LIMIT 5;

---------------------------------------------------------
query result
university_professors
firstname	lastname	university	university_shortname	university_city	function	organization	organization_sector
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Chairman of L3S Advisory Board	L3S Advisory Board	Education & research
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Member Conseil of Zeno-Karl Schindler Foundation	Zeno-Karl Schindler Foundation	Education & research
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Member of Conseil Fondation IDIAP	Fondation IDIAP	Education & research
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Panel Member 	SNF Ambizione Program	Education & research
Reza Shokrollah	Abhari	ETH Zürich	ETH	Zurich	Aufsichtsratsmandat	PNE Wind AG	Energy, environment & mobility
Showing 5 out of 5 rows
