--Add a new column id with data type serial to the professors table.
-- Add the new column to the table
ALTER TABLE professors
ADD COLUMN id serial;

--Make id a primary key and name it professors_pkey.
-- Make id a primary key
ALTER TABLE professors
ADD CONSTRAINT professors_pkey Primary key (id);

--Write a query that returns all the columns and 10 rows from professors.
-- Have a look at the first 10 rows of professors
SELECT * 
FROM professors
LIMIT 10;

----------------------------------------
-- QUERY RESULT 
--firstname	lastname	university_shortname	id
Karl	Aberer	EPF	1
Reza Shokrollah	Abhari	ETH	2
Georges	Abou Jaoudé	EPF	3
Hugues	Abriel	UBE	4
Daniel	Aebersold	UBE	5
Marcelo	Aebi	ULA	6
Christoph	Aebi	UBE	7
Patrick	Aebischer	EPF	8
Stephan	Aier	USG	9
Anastasia	Ailamaki	EPF	10
