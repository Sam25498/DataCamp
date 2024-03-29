/*
Split strings on a delimiter
The street suffix is the part of the street name that gives the type of street, such as Avenue, Road, or Street. In the Evanston 311 data, sometimes the street suffix is the full word, while other times it is the abbreviation.

Extract just the first word of each street value to find the most common streets regardless of the suffix.

To do this, use

split_part(string_to_split, delimiter, part_number)
Instructions
100 XP
Use split_part() to select the first word in street; alias the result as street_name.
Also select the count of each value of street_name.
*/

-- Select the first word of the street value
SELECT split_part(street, ' ', 1) AS street_name, 
       count(*)
  FROM evanston311
 GROUP BY street_name
 ORDER BY count DESC
 LIMIT 20;
-----------------------------------
query result
evanston311
street_name	count
null	1699
Chicago	1569
Central	1529
Sherman	1479
Davis	1248
Church	1225
Main	880
