
/*Working with the current date and time
Because the Sakila database is a bit dated and most of the date and time values are from 2005 or 2006, you are going to practice using the current date and time in our queries without using Sakila. You'll get back into working with this database in the next video and throughout the remainder of the course. For now, let's practice the techniques you learned about so far in this chapter to work with the current date and time.

As you learned in the video, NOW() and CURRENT_TIMESTAMP can be used interchangeably.

Instructions 4/4
25 XP
Use NOW() to select the current timestamp with timezone.

Select the current date without any time value.

Now, let's use the CAST() function to eliminate the timezone from the current timestamp.

4
Finally, let's select the current date.
Use CAST() to retrieve the same result from the NOW() function.*/
-- Select the current timestamp
SELECT NOW();

----------------------------------
-- Select the current date
SELECT CURRENT_DATE;
---------------------
query result
current_date
2023-09-03
------------------------------
--Select the current timestamp without a timezone
SELECT CAST( NOW() AS timestamp )
-----------------------------

query result
now
2023-09-03 00:28:24.422278
-------------------------------------
SELECT 
	-- Select the current date
	CURRENT_DATE,
    -- CAST the result of the NOW() function to a date
    CAST( NOW() AS date )
--------------------------------------
query result
current_date	now
2023-09-03	2023-09-03
