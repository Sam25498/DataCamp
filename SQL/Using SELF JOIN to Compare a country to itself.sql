--Perform an inner join of populations with itself ON country_code, aliased p1 and p2 respectively.
--Select the country_code from p1 and the size field from both p1 and p2, aliasing p1.size as size2010 and p2.size as size2015 (in that order).

-- Select aliased fields from populations as p1
SELECT p1.country_code, p1.size AS size2010, p2.size AS size2015
-- Join populations as p1 to itself, alias as p2, on country code
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code;

--query result
country_code	size2010	size2015
ABW	101597	103889
ABW	101597	101597
ABW	103889	103889
ABW	103889	101597
...
BMU	65124	65235
BMU	65124	65124
BMU	65235	65235
BMU	65235	65124
Showing 100 out of 868 rows

--Since you want to compare records from 2010 and 2015, eliminate unwanted records by extending the WHERE statement to include only records where the p1.year matches p2.year - 5.
SELECT 
	p1.country_code, 
    p1.size AS size2010, 
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010
-- Filter such that p1.year is always five years before p2.year
    AND p1.year = p2.year - 5;

--query result
populations

country_code	size2010	size2015
ABW	101597	103889
AFG	27962208	32526562
AGO	21219954	25021974
ALB	2913021	2889167
...
ISR	7623600	8380100
ITA	59277416	60730584
JAM	2741253	2793335
JOR	6517912	7594547
JPN	128070000	126958470
KAZ	16321581	17544126
Showing 100 out of 217 rows
