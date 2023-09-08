/*
Trimming
Some of the street values in evanston311 include house numbers with # or / in them. In addition, some street values end in a ..

Remove the house numbers, extra punctuation, and any spaces from the beginning and end of the street values as a first attempt at cleaning up the values.

Instructions
100 XP
Trim digits 0-9, #, /, ., and spaces from the beginning and end of street.
Select distinct original street value and the corrected street value.
Order the results by the original street value*/

SELECT distinct street,
       -- Trim off unwanted characters from street
       trim(street, '0123456789 #/.') AS cleaned_street
  FROM evanston311
 ORDER BY street;
------------------------------------------
query result
evanston311
street	cleaned_street
1/2 Chicago Ave	Chicago Ave
1047B Chicago Ave	B Chicago Ave
13th Street	th Street
141A Callan Ave	A Callan Ave
141b Callan Ave	b Callan Ave
1624B Central St	B Central St
217A Dodge Ave	A Dodge Ave
