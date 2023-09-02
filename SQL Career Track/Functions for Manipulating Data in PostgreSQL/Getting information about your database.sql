 -- Select all columns from the TABLES system database
 SELECT * 
 FROM INFORMATION_SCHEMA.TABLES
 -- Filter by schema
 WHERE table_schema = 'public';
------------------------------------------------------
--query result
actor
table_catalog	table_schema	table_name	table_type	self_referencing_column_name	reference_generation	user_defined_type_catalog	user_defined_type_schema	user_defined_type_name	is_insertable_into	is_typed	commit_action
pgdata	public	actor	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	category	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	film_actor	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	film_category	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	address	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	city	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	country	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	customer	BASE TABLE	null	null	null	null	null	YES	NO	null
pgdata	public	inventory	BASE TABLE	null	null	null	null

-----------------------------------------------------------------------
--Select all columns from the INFORMATION_SCHEMA.COLUMNS system database. Limit by table_name to actor
 -- Select all columns from the COLUMNS system database
 SELECT * 
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_name = 'actor';

---------------------------------------------------------
query result
actor
table_catalog	table_schema	table_name	column_name	ordinal_position	column_default	is_nullable	data_type	character_maximum_length	character_octet_length	numeric_precision	numeric_precision_radix	numeric_scale	datetime_precision	interval_type	interval_precision	character_set_catalog	character_set_schema	character_set_name	collation_catalog	collation_schema	collation_name	domain_catalog	domain_schema	domain_name	udt_catalog	udt_schema	udt_name	scope_catalog	scope_schema	scope_name	maximum_cardinality	dtd_identifier	is_self_referencing	is_identity	identity_generation	identity_start	identity_increment	identity_maximum	identity_minimum	identity_cycle	is_generated	generation_expression	is_updatable
pgdata	public	actor	actor_id	1	null	YES	smallint	null	null	16	2	0	null	null	null	null	null	null	null	null	null	null	null	null	pgdata	pg_catalog	int2	null	null	null	null	1	NO	NO	null	null	null	null	null	NO	NEVER	null	YES
pgdata	public	actor	last_update	4	null	YES	timestamp without time zone	null	null	null	null	null	6	null	null	null	null	null	null	null	null	null	null	null	pgdata	pg_catalog	timestamp	null	null	null	null	4	NO	NO	null	null	null	null	null	NO	NEVER	null	YES
pgdata	public	actor	first_name	2	null	YES	character varying	45	180	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	pgdata	pg_catalog	varchar	null	null	null	null	2	NO	NO	null	null	null	null	null	NO	NEVER	null	YES
pgdata	public	actor	last_name	3	null	YES	character varying	45
