--Alter professors to add the text column university_shortname.
-- Add the university_shortname column
ALTER TABLE professors
ADD COLUMN university_shortname text;

-- Print the contents of this table
SELECT * 
FROM professors
---------------------------------
--query result
firstname	lastname	university_shortname
