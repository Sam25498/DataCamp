/*
Concatenate strings
House number (house_num) and street are in two separate columns in evanston311. Concatenate them together with concat() with a space in between the values.

Instructions
100 XP
Concatenate house_num, a space ' ', and street into a single value using the concat().
Use a trim function to remove any spaces from the start of the concatenated value.
*/

-- Concatenate house_num, a space, and street
-- and trim spaces from the start of the result
SELECT LTRIM(CONCAT(house_num,' ',street),' ') AS address
  FROM evanston311;
--------------------------------------------------
query result
evanston311
address
606-612 Sheridan Road
930 Washington St
1183-1223 Lincoln St
1–111 Callan Ave
1524 Crain St
2830 Central Street
1139 Dodge Ave
'Great! When joining values that might be NULL with a separator between them, consider using the concat_ws() function, which you 
  can read about in the PostgreSQL documentation, to avoid duplicate or unnecessary separators in the result.'
