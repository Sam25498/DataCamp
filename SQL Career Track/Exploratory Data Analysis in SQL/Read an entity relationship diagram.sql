/*
First, using the tag_type table, count the number of tags with each type.
Order the results to find the most common tag type.
*/
-- Count the number of tags with each type
SELECT type, COUNT(type) AS count
  FROM tag_type
 -- To get the count for each type, what do you need to do?
 GROUP BY type
 -- Order the results with the most common
 -- tag types listed first
 ORDER BY type DESC;
------------------------------------------------------------
query result
tag_type
tag_company
company
stackoverflow
type	count
storage	2
spreadsheet	2
payment	5
os	2
mobile-os	4
identity	1
database	6
------------------------------------------------------------
/*
Join the tag_company, company, and tag_type tables, keeping only mutually occurring records.
Select company.name, tag_type.tag, and tag_type.type for tags with the most common type from the previous step.
*/
-- Select the 3 columns desired
SELECT company.name, tag_type.tag, tag_type.type
  FROM company
  	   -- Join to the tag_company table
       INNER JOIN tag_company 
       ON company.id = tag_company.company_id
       -- Join to the tag_type table
       INNER JOIN tag_type
       ON tag_company.tag = tag_type.tag
  -- Filter to most common type
  WHERE type='cloud';
-------------------------------------------------------------
query result
tag_type
tag_company
company
stackoverflow
name	tag	type
Amazon Web Services	amazon-cloudformation	cloud
Amazon Web Services	amazon-cloudfront	cloud
Amazon Web Services	amazon-cloudsearch	cloud
Amazon Web Services	amazon-cloudwatch	cloud
Amazon Web Services	amazon-cognito	cloud
Amazon Web Services	amazon-data-pipeline	cloud
Amazon Web Services	amazon-dynamodb	cloud
