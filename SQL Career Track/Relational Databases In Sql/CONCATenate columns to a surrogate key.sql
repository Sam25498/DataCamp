-- Count the number of distinct rows with columns make, model
SELECT COUNT(DISTINCT(make,model))
FROM cars;
-------------------
--query result
count
10
--------------------
--Add a new column id with the data type varchar(128).
-- Add the id column
ALTER TABLE cars
ADD COLUMN id varchar(128);

-----------------------------------
--Concatenate make and model into id using an UPDATE table_name SET column_name = ... query and the CONCAT() function.
-- Update id with make + model
UPDATE cars
SET id = CONCAT(make, model);

-- Make id a primary key
ALTER TABLE cars
ADD CONSTRAINT id_pk PRIMARY KEY(id);

-- Have a look at the table
SELECT * FROM cars;
------------------------------------------------
-- query result
make	model	mpg	id
Subaru	Forester	24	SubaruForester
Opel	Astra	45	OpelAstra
Opel	Vectra	40	OpelVectra
Ford	Avenger	30	FordAvenger
Ford	Galaxy	30	FordGalaxy
Toyota	Prius	50	ToyotaPrius
Toyota	Speedster	30	ToyotaSpeedster
Toyota	Galaxy	20	ToyotaGalaxy
Mitsubishi	Forester	10	MitsubishiForester
Mitsubishi	Galaxy	30	MitsubishiGalaxy
