--SELECT the country and event_year columns from the eurovision table.
-- Amend the code to select all columns
SELECT 
  country, 
  event_year 
FROM 
  eurovision;
 ########################
 query result
eurovision
country	event_year
Israel	2009
France	2009
Sweden	2009
Croatia	2009
Portugal	2009
Iceland	2009
Greece	2009
.....
Sweden	2006
Turkey	2006
Armenia	2006
Hungary	2005
United Kingdom	2005
Malta	2005
Showing 100 out of 647 rows

--Use a shortcut to amend the current query, returning ALL columns in the table.
SELECT 
  * 
FROM 
  eurovision;
  ------------------------------------------------------------------------
  query result
eurovision
euro_id	event_year	country	gender	group_type	place	points	host_country	host_region	is_final	sf_number	song_in_english
1	2009	Israel	Female	Group	16	53	Away	Away	1	null	1
2	2009	France	Female	Solo	8	107	Away	Away	1	null	0
3	2009	Sweden	Female	Solo	21	33	Away	Away	1	null	1
4	2009	Croatia	Both	Group	18	45	Away	Away	1	null	0
5	2009	Portugal	Both	Group	15	57	Away	Away	1	null	0
6	2009	Iceland	Female	Solo	2	218	Away	Away	1	null	1
7	2009	Greece	Male	Solo	7	120	Away	Away	1	null	1
8	2009	Armenia	Female	Group	10	92	Away	Home	1	null	1
9	2009	Russia	Female	Solo	11	91	Home	Home	1	null	0
10	2009	Azerbaijan	Both	Group	3	207	Away	Home	1	null	1
...
91	2006	Ukraine	Female	Solo	7	145	Away	Away	1	null	1
92	2006	France	Female	Solo	22	5	Away	Home	1	null	0
93	2006	Croatia	Female	Solo	12	56	Away	Away	1	null	0
94	2006	Ireland	Male	Solo	10	93	Away	Away	1	null	1
95	2006	Sweden	Female	Solo	5	170	Away	Away	1	null	1
96	2006	Turkey	Female	Solo	11	91	Away	Away	1	null	1
97	2006	Armenia	Male	Solo	8	129	Away	Away	1	null	1
98	2005	Hungary	Both	Group	12	97	Away	Home	1	null	0
99	2005	United Kingdom	Female	Solo	22	18	Away	Away	1	null	1
100	2005	Malta	Female	Solo	2	192	Away	Away	1	null	1
Showing 100 out of 647 rows

--This time, return only half the rows using 'TOP', using the same shortcut as before to return all columns.
---- Return all columns, restricting the percent of rows returned
SELECT 
  TOP (50) PERCENT * 
FROM 
  eurovision;



