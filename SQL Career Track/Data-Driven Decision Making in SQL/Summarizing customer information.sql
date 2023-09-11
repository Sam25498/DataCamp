SELECT count(*) -- Count the total number of customers
FROM customers
WHERE date_of_birth BETWEEN '1980-01-01' AND '1989-12-31'; -- Select customers born between 1980-01-01 and 1989-12-31
-----------------------------------------
--QUERY RESULT
count
33
-----------------------------------------
--Count the number of customers from Germany.
SELECT count(*)   -- Count the total number of customers
FROM customers
WHERE country = 'Germany'; -- Select all customers from Germany
---------------------------------------------
--query result
customers
count
0
-----------------------------------------------
--Count the number of countries where MovieNow has customers.
SELECT count(DISTINCT country)   -- Count the number of countries
FROM customers;
-------------------------------------------
--query result
customers
count
11
