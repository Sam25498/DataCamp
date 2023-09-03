/*
Getting info about user-defined data types
The Sakila database has a user-defined enum data type called mpaa_rating. The rating column in the film table is an mpaa_rating type and contains the familiar rating for that film like PG or R. This is a great example of when an enumerated data type comes in handy. Film ratings have a limited number of standard values that rarely change.

When you want to learn about a column or data type in your database the best place to start is the INFORMATION_SCHEMA. You can find information about the rating column that can help you learn about the type of data you can expect to find. For enum data types, you can also find the specific values that are valid for a particular enum by looking in the pg_enum system table. Let's dive into the exercises and learn more.

Instructions 1/2
50 XP
1
2
Select the column_name, data_type, udt_name.
Filter for the rating column in the film table.
*/

-- Select the column name, data type and udt name columns
SELECT column_name, data_type, udt_name
FROM INFORMATION_SCHEMA.COLUMNS 
-- Filter by the rating column in the film table
WHERE table_name ='film' AND column_name ='rating';
----------------------------------
query result
film
rental
inventory
column_name	data_type	udt_name
rating	USER-DEFINED	mpaa_rating

-----------------------------------
--Select all columns from the pg_type table where the type name is equal to mpaa_rating.
123
SELECT *
FROM pg_type
WHERE typname='mpaa_rating'
-------------------------------------
query result
film
rental
inventory
oid	typname	typnamespace	typowner	typlen	typbyval	typtype	typcategory	typispreferred	typisdefined	typdelim	typrelid	typsubscript	typelem	typarray	typinput	typoutput	typreceive	typsend	typmodin	typmodout	typanalyze	typalign	typstorage	typnotnull	typbasetype	typtypmod	typndims	typcollation	typdefaultbin	typdefault	typacl
16434	mpaa_rating	2200	16384	4	true	e	E	false	true	,	0	-	0	16433	enum_in	enum_out	enum_recv	enum_send	-	-	-	i	p	false	0	-1	0	0	null	null	nul
