--Drop the firstname and lastname columns from the affiliations table.

-- Drop the firstname column
ALTER TABLE affiliations
DROP column firstname;

-- Drop the lastname column
ALTER TABLE affiliations
DROP COLUMN lastname;
