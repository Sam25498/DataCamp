-- Insert unique professors into the new table
INSERT INTO professors 
SELECT DISTINCT firstname, lastname, university_shortname 
FROM university_professors;

-- Doublecheck the contents of professors
SELECT * 
FROM professors;
-------------------------------------------------
--query result
firstname	lastname	university_shortname
Michel	Rappaz	EPF
Hilal	Lashuel	EPF
Jeffrey	Huang	EPF
Pierre	Magistretti	EPF
Paolo	Ienne	EPF
