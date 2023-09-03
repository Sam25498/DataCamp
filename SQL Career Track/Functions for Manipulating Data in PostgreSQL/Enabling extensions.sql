/*
Enabling extensions
Before you can use the capabilities of an extension it must be enabled. As you have previously learned, most PostgreSQL distributions come pre-bundled with many useful extensions to help extend the native features of your database. You will be working with fuzzystrmatch and pg_trgm in upcoming exercises but before you can practice using the capabilities of these extensions you will need to first make sure they are enabled in our database. In this exercise you will enable the pg_trgm extension and confirm that the fuzzystrmatch extension, which was enabled in the video, is still enabled by querying the pg_extension system table.

Instructions 1/2
50 XP
1
2
Enable the pg_trgm extension
*/
-- Enable the pg_trgm extension
CREATE EXTENSION IF NOT EXISTS pg_trgm;

-------------------------------------------
--Now confirm that both fuzzystrmatch and pg_trgm are enabled by selecting all rows from the appropriate system table.
-- Select all rows extensions
SELECT * 
FROM pg_extension;
---------------------------------------------
query result
oid	extname	extowner	extnamespace	extrelocatable	extversion	extconfig	extcondition
13681	plpgsql	10	11	false	1.0	null	null
16456	fuzzystrmatch	16384	2200	true	1.1	null	null
16467	pg_trgm	16384	2200	true	1.6	null	null
