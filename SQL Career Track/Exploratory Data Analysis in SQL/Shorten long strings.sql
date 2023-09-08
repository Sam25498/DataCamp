/*
Shorten long strings
The description column of evanston311 can be very long. You can get the length of a string with the length() function.

For displaying or quickly reviewing the data, you might want to only display the first few characters. You can use the left() function to get a specified number of characters at the start of each value.

To indicate that more data is available, concatenate '...' to the end of any shortened description. To do this, you can use a CASE WHEN statement to add '...' only when the string length is greater than 50.

Select the first 50 characters of description when description starts with the word "I".

Instructions
100 XP
Select the first 50 characters of description with '...' concatenated on the end where the length() of the description is greater than 50 characters. Otherwise just select the description as is.

Select only descriptions that begin with the word 'I' and not the letter 'I'.

For example, you would want to select "I like using SQL!", but would not want to select "In this course we use SQL!".*/
-- Select the first 50 chars when length is greater than 50
SELECT CASE WHEN length(description) > 50
            THEN left(description, 50) || '...'
       -- otherwise just select description
       ELSE description
       END
  FROM evanston311
 -- limit to descriptions that start with the word I
 WHERE description LIKE 'I %'
 ORDER BY description;
--------------------------------------------------------
query result
evanston311
description
I  work for Schermerhorn & Co. and manage this con...
I Live in a townhouse with garbage cans in back, i...
I Put In For Reserve Disabled Parking, A Week Ago ...
I SDO GOWANS #1258 RECEIVED A TELEPHONE CALL ON 3/...
I accidentally mistyped my license plate number - ...
I accidentally sent the wrong cover letter on my a...
I acquired c diff at north shore hospital in Evans...
