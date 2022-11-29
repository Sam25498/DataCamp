SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
FULL JOIN languages as l 
USING(code)
-- Full join with currencies (alias as c2)
FULL JOIN currencies AS c2
USING(code)
WHERE region LIKE 'M%esia';


--query result
--country	region	language	basic_unit	frac_unit
Kiribati	Micronesia	English	Australian dollar	Cent
Kiribati	Micronesia	Kiribati	Australian dollar	Cent
Marshall Islands	Micronesia	Other	United States dollar	Cent
Marshall Islands	Micronesia	Marshallese	United States dollar	Cent
Nauru	Micronesia	Other	Australian dollar	Cent
Nauru	Micronesia	English	Australian dollar	Cent
