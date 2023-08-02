--For deleting constraints, though, you need to know their name. This information is also stored in information_schema.
-- Have a look at the existing foreign key constraints by querying table_constraints in information_schema.

-- Identify the correct constraint name
SELECT constraint_name, table_name, constraint_type
FROM information_schema.table_constraints
WHERE constraint_type = 'FOREIGN KEY';
----------------------------------------------
-- query result 
constraint_name	table_name	constraint_type
affiliations_organization_id_fkey	affiliations	FOREIGN KEY
affiliations_professor_id_fkey	affiliations	FOREIGN KEY
professors_fkey	professors	FOREIGN KEY
----------------------------------------------

--Delete the affiliations_organization_id_fkey foreign key constraint in affiliations

-- Drop the right foreign key constraint
ALTER TABLE affiliations
DROP CONSTRAINT affiliations_organization_id_fkey;

----------------------------------------------
----------------------------------------------
--Add a new foreign key to affiliations that CASCADEs deletion if a referenced record is deleted from organizations. Name it affiliations_organization_id_fkey.

-- Add a new foreign key constraint from affiliations to organizations which cascades deletion
ALTER TABLE affiliations
ADD CONSTRAINT affiliations_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES organizations (id) ON DELETE CASCADE;

----------------------------------------------
--Run the DELETE and SELECT queries to double check that the deletion cascade actually works.

-- Delete an organization 
DELETE FROM organizations 
WHERE id = 'CUREM';

-- Check that no more affiliations with this organization exist
SELECT * FROM affiliations
WHERE organization_id = 'CUREM';
