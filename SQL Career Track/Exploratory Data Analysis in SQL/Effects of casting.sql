/*
Effects of casting
When you cast data from one type to another, information can be lost or changed. See how the casting changes values and practice casting data using the CAST() function and the :: syntax.

SELECT CAST(value AS new_type);

SELECT value::new_type;
Instructions 1/3
35 XP
1
Select profits_change and profits_change cast as integer from fortune500.
Look at how the values were converted.

Take Hint (-10 XP)
2
Compare the results of casting of dividing the integer value 10 by 3 to the result of dividing the numeric value 10 by 3.
3
Now cast numbers that appear as text as numeric.
Note: 1e3 is scientific notation.*/
-- Select the original value
SELECT profits_change, 
	   -- Cast profits_change
       CAST(profits_change AS INTEGER) AS profits_change_int
  FROM fortune500;
----------------------------------------------------
--query_result
profits_change	profits_change_int
-7.2	-7
0	0
-14.4	-14
-51.5	-52
53	53
20.7	21
1.5	2
-----------------------------------------------------
--Compare the results of casting of dividing the integer value 10 by 3 to the result of dividing the numeric value 10 by 3.
-- Divide 10 by 3
SELECT 10/3, 
       -- Cast 10 as numeric and divide by 3
       10::numeric/3;
----------------------------------------------------
--query result
?column?	?column?
3	3.3333333333333333
---------------------------------------------------
--Now cast numbers that appear as text as numeric.
--Note: 1e3 is scientific notation.
SELECT '3.2'::numeric,
       '-123'::numeric,
       '1e3'::numeric,
       '1e-3'::numeric,
       '02314'::numeric,
       '0002'::numeric;
---------------------------------------------------
--query result
fortune500
numeric	numeric	numeric	numeric	numeric	numeric
3.2	-123	1000	0.001	2314	2
