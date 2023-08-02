-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id INTEGER REFERENCES professors (id);

--Rename the organization column in affiliations to organization_id.
ALTER TABLE affiliations
RENAME COLUMN organization TO organization_id;

-- Add a foreign key on organization_id
ALTER TABLE affiliations
ADD CONSTRAINT affiliations_organization_fkey FOREIGN KEY (organization_id) REFERENCES organizations (id);
