-- Select relevant fields from cities table
SELECT name, country_code, urbanarea_pop
FROM cities
-- Filter using a subquery on the countries table
WHERE cities.name = capital
    (SELECT capital  
     FROM countries)
     ORDER BY urbanarea_pop DESC;
     
-- Right Code
-- Select relevant fields from cities table
SELECT name, country_code, urbanarea_pop
FROM cities
-- Filter using a subquery on the countries table
WHERE name IN
  (SELECT capital
   FROM countries)
ORDER BY urbanarea_pop DESC;

--query result
name	country_code	urbanarea_pop
Beijing	CHN	21516000
Dhaka	BGD	14543124
Tokyo	JPN	13513734
Moscow	RUS	12197596
Cairo	EGY	10230350
Kinshasa	COD	10130000
...
Abuja	NGA	1235880
Dakar	SEN	1146053
Abu Dhabi	ARE	1145000
Tripoli	LBY	1126000
Yerevan	ARM	1060138
Tunis	TUN	1056247
Showing 66 out of 66 rows
