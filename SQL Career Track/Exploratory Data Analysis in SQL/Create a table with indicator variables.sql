/*
Create a table with indicator variables
Determine whether medium and high priority requests in the evanston311 data are more likely to contain requesters' contact information: an email address or phone number.

Emails contain an @.
Phone numbers have the pattern of three characters, dash, three characters, dash, four characters. For example: 555-555-1212.
Use LIKE to match these patterns. Remember % matches any number of characters (even 0), and _ matches a single character. Enclosing a pattern in % (i.e. before and after your pattern) allows you to locate it within other text.

For example, '%___.com%'would allow you to search for a reference to a website with the top-level domain '.com' and at least three characters preceding it.

Create and store indicator variables for email and phone in a temporary table. LIKE produces True or False as a result, but casting a boolean (True or False) as an integer converts True to 1 and False to 0. This makes the values easier to summarize later.

Instructions 1/2
50 XP
1
2
Create a temp table indicators from evanston311 with three columns: id, email, and phone.

Use LIKE comparisons to detect the email and phone patterns that are in the description, and cast the result as an integer with CAST().

Your phone indicator should use a combination of underscores _ and dashes - to represent a standard 10-digit phone number format.
Remember to start and end your patterns with % so that you can locate the pattern within other text!*/
-- To clear table if it already exists
DROP TABLE IF EXISTS indicators;

-- Create the indicators temp table
CREATE TEMP TABLE indicators AS
  -- Select id
  SELECT id, 
         -- Create the email indicator (find @)
         CAST (description LIKE '%@%' AS integer) AS email,
         -- Create the phone indicator
         CAST (description LIKE '%___-___-____%' AS integer) AS phone 
    -- What table contains the data? 
    FROM evanston311;

-- Inspect the contents of the new temp table
SELECT *
  FROM indicators;
----------------------------------------------------------
--Join the indicators table to evanston311, selecting the proportion of reports including an email or phone grouped by priority.
--Include adjustments to account for issues arising from integer division.
-- To clear table if it already exists
DROP TABLE IF EXISTS indicators;

-- Create the temp table
CREATE TEMP TABLE indicators AS
  SELECT id, 
         CAST (description LIKE '%@%' AS integer) AS email,
         CAST (description LIKE '%___-___-____%' AS integer) AS phone 
    FROM evanston311;

-- Select the column you'll group by
SELECT priority, 
       -- Compute the proportion of rows with each indicator
       sum(email)/count(*)::numeric AS email_prop, 
       sum(phone)/count(*)::numeric AS phone_prop 
  -- Tables to select from
  FROM evanston311
       LEFT JOIN indicators
       -- Joining condition
       ON evanston311.id=indicators.id
 -- What are you grouping by?
 GROUP BY priority;
-------------------------------------------------------
query result
evanston311
priority	email_prop	phone_prop
MEDIUM	0.01966927763272410792	0.01845082680591818973
NONE	0.00412220338419600412	0.00568465144110900568
HIGH	0.01136363636363636364	0.02272727272727272727
LOW	0.00580270793036750484	0.00193423597678916828


