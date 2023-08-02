--Add a unique constraint to the university_shortname column in universities. Give it the name university_shortname_unq.
-- Make universities.university_shortname unique
ALTER TABLE universities
ADD CONSTRAINT university_shortname_unq UNIQUE(university_shortname);

--Add a unique constraint to the organization column in organizations. Give it the name organization_unq.
-- Make organizations.organization unique
ALTER TABLE organizations
ADD CONSTRAINT organization_unq UNIQUE(organization);



