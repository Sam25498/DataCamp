-- Select the university_shortname column
SELECT DISTINCT(university_shortname) 
FROM professors;
---------------------------------------------
query result
affiliations
universities
professors
organizations
university_shortname
ULA
UNE
EPF
UBA
USG
UBE
UZH
--Now specify a fixed-length character type with the correct length for university_shortname.
-- Specify the correct fixed-length character type
ALTER TABLE professors
ALTER COLUMN university_shortname
TYPE Char(3);

--Change the type of the firstname column to varchar(64).
-- Change the type of firstname
ALTER TABLE professors
ALTER COLUMN firstname
TYPE varchar(64);
