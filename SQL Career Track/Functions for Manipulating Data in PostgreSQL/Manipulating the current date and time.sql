/*Manipulating the current date and time
Most of the time when you work with the current date and time, you will want to transform, manipulate, or perform operations on the value in your queries. In this exercise, you will practice adding an INTERVAL to the current timestamp as well as perform some more advanced calculations.

Let's practice retrieving the current timestamp. For this exercise, please use CURRENT_TIMESTAMP instead of the NOW() function and if you need to convert a date or time value to a timestamp data type, please use the PostgreSQL specific casting rather than the CAST() function.

Instructions 1/3
35 XP
1
2
3
Select the current timestamp without timezone and alias it as right_now.*/
--Select the current timestamp without timezone
--Select the current timestamp without timezone
SELECT CURRENT_TIMESTAMP::timestamp AS right_now;
---------------------------------------
query result
right_now
2023-09-03 00:44:43.131436
---------------------------
SELECT
	CURRENT_TIMESTAMP::timestamp AS right_now,
    INTERVAL '5 days' + CURRENT_TIMESTAMP AS five_days_from_now;
------------------------------------------------
query result
right_now	five_days_from_now
2023-09-03 00:46:23.286397	2023-09-08 00:46:23.286397+02:00
-----------------------------------------------------
SELECT
	CURRENT_TIMESTAMP(2)::timestamp AS right_now,
    interval '5 days' + CURRENT_TIMESTAMP(2) AS five_days_from_now;
----------------------------------------------------
query result
right_now	five_days_from_now
2023-09-03 00:47:38.690000	2023-09-08 00:47:38.690000+02:00
