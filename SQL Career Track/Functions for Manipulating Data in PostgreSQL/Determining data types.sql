/*Select the column name and data type from the INFORMATION_SCHEMA.COLUMNS system database.
Limit results to only include the customer table.*/
-- Get the column name and data type
SELECT
 	column_name, 
    data_type
-- From the system database information schema
FROM INFORMATION_SCHEMA.COLUMNS 
-- For the customer table
WHERE table_name = 'customer';
-----------------------------------------------------------------
query result
customer
column_name	data_type
active	integer
store_id	smallint
create_date	date
last_update	timestamp without time zone
customer_id	smallint
address_id	smallint
activebool	boolean
