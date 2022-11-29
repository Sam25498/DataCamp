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
