--Rename the organisation column to organization in affiliations.
-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

--Delete the university_shortname column in affiliations.
-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
ALTER TABLE affiliations
DROP COLUMN university_shortname;
