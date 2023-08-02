--Rename the organization column to id in organizations.
--Make id a primary key and name it organization_pk.

-- Rename the organization column to id
ALTER TABLE organizations
RENAME COLUMN organization TO id;

-- Make id a primary key
ALTER TABLE organizations
ADD CONSTRAINT organization_pk PRIMARY KEY (id);

-----------------------------------------
--Rename the university_shortname column to id in universities. 
-- Make id a primary key and name it university_pk.
-- Rename the university_shortname column to id

-- Rename the university_shortname column to id
ALTER TABLE universities
RENAME COLUMN university_shortname TO id;

-- Make id a primary key
ALTER TABLE universities
ADD CONSTRAINT university_pk PRIMARY KEY (id);
;
