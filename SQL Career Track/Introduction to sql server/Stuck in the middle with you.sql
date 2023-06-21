-- You can use CHARINDEX to find a specific character or pattern within a column. Edit the query to return the CHARINDEX of the string 'Weather' whenever it appears within the description column.
-- Complete the query to find `Weather` within the description column
SELECT 
  description, 
  CHARINDEX('Weather', description) 
FROM 
  grid
WHERE description LIKE '%Weather%';
-------------------------------------------------------
query result
grid
description	
Severe Weather  Thunderstorms	8
Severe Weather  Thunderstorms	8
Severe Weather  Thunderstorms	8
Severe Weather  Thunderstorms	8
Severe Weather  Thunderstorms 8
...
-------------------------------------------------------
--We now know where 'Weather' begins in the description column. But where does it end? We could manually count the number of characters, but, for longer strings, this is more work, especially when we can also find the length with LEN.
-- Complete the query to find the length of `Weather'
SELECT 
  description, 
  CHARINDEX('Weather', description) AS start_of_string,
  LEN('Weather') AS length_of_string 
FROM 
  grid
WHERE description LIKE '%Weather%'; 
------------------------------------------------------------
query result
grid
description	start_of_string	length_of_string
Severe Weather  Thunderstorms	8	7
Severe Weather  Thunderstorms	8	7
Severe Weather  Thunderstorms	8	7
Severe Weather  Thunderstorms	8	7
Severe Weather  Thunderstorms	8	7
...
-----------------------------------------------------------------
-- Now we use SUBSTRING to return everything after Weather for the first ten rows. The start index here is 15, because the CHARINDEX for each row is 8, and the LEN of Weather is 7.
-- Complete the substring function to begin extracting from the correct character in the description column
SELECT TOP (10)
  description, 
  CHARINDEX('Weather', description) AS start_of_string, 
  LEN ('Weather') AS length_of_string, 
  SUBSTRING(
    description, 
    15, 
    LEN(description)
  ) AS additional_description 
FROM 
  grid
WHERE description LIKE '%Weather%';
---------------------------------------------------------------------------
query result
grid
description	start_of_string	length_of_string	additional_description
Severe Weather  Thunderstorms	8	7	  Thunderstorms
Severe Weather  Thunderstorms	8	7	  Thunderstorms
Severe Weather  Thunderstorms	8	7	  Thunderstorms
Severe Weather  Thunderstorms	8	7	  Thunderstorms
Severe Weather  Thunderstorms	8	7	  Thunderstorms
Severe Weather  Thunderstorms	8	7	  Thunderstorms
Severe Weather  Thunderstorms	8	7	  Thunderstorms
----------------------------------------------------------------------
