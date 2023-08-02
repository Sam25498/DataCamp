--JOIN professors with universities on professors.university_id = universities.id, i.e., retain all records where the foreign key of professors is equal to the primary key of universities.
--Filter for university_city = 'Zurich'.

  
-- Select all professors working for universities in the city of Zurich
SELECT professors.lastname, universities.id, universities.university_city
FROM professors
JOIN universities
ON professors.university_id = universities.id
WHERE universities.university_city = 'Zurich';
--------------------------------------------------------------

--query result 
lastname	id	university_city
Abhari	ETH	Zurich
Axhausen	ETH	Zurich
Baschera	ETH	Zurich
Basin	ETH	Zurich
Bechtold	ETH	Zurich
Boutellier	ETH	Zurich
Bühler	UZH	Zurich
