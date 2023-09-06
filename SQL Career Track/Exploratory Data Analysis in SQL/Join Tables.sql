/*
Look at the contents of the company and fortune500 tables. Find a column that they have in common where the values for each company are the same in both tables.
Join the company and fortune500 tables with an INNER JOIN.
Select only company.name for companies that appear in both tables.
*/
SELECT company.name
-- Table(s) to select from
  FROM company
       INNER JOIN fortune500
       ON fortune500.ticker=company.ticker;
----------------------------------------------------------------
query result
fortune500
company
name
Apple Incorporated
Amazon.com Inc
Alphabet
Microsoft Corp.
International Business Machines Corporation
PayPal Holdings Incorporated
eBay, Inc.
