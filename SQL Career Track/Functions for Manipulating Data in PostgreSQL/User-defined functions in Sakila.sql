/*
User-defined functions in Sakila
If you were running a real-life DVD Rental store, there are many questions that you may need to answer repeatedly like whether a film is in stock at a particular store or the outstanding balance for a particular customer. These types of scenarios are where user-defined functions will come in very handy. The Sakila database has several user-defined functions pre-defined. These functions are available out-of-the-box and can be used in your queries like many of the built-in functions we've learned about in this course.

In this exercise, you will build a query step-by-step that can be used to produce a report to determine which film title is currently held by which customer using the inventory_held_by_customer() function.

Instructions 1/3
35 XP
1
2
3
Select the title and inventory_id columns from the film and inventory tables in the database
*/

-- Select the film title and inventory ids
SELECT 
	f.title, 
    i.inventory_id
FROM film AS f 
	-- Join the film table to the inventory table
	INNER JOIN inventory AS i ON f.film_id=i.film_id; 
---------------------------------------------------
query result
film
inventory
title	inventory_id
ACE GOLDFINGER	9
ACE GOLDFINGER	10
ACE GOLDFINGER	11
ADAPTATION HOLES	12
ADAPTATION HOLES	13
ADAPTATION HOLES	14
ADAPTATION HOLES	15
---------------------------------------------------
--inventory_id is currently held by a customer and alias the column as held_by_cust
-- Select the film title, rental and inventory ids
SELECT 
	f.title, 
    i.inventory_id,
    -- Determine whether the inventory is held by a customer
    inventory_held_by_customer(i.inventory_id) AS held_by_cust 
FROM film as f 
	-- Join the film table to the inventory table
	INNER JOIN inventory AS i ON f.film_id=i.film_id 
-------------------------------------------------------------
query result
film
inventory
title	inventory_id	held_by_cust
ACE GOLDFINGER	9	366
ACE GOLDFINGER	10	null
ACE GOLDFINGER	11	null
ADAPTATION HOLES	12	null
ADAPTATION HOLES	13	null
ADAPTATION HOLES	14	null
ADAPTATION HOLES	15	null
------------------------------------------------------------
--Now filter your query to only return records where the inventory_held_by_customer() function returns a non-null value.
-- Select the film title and inventory ids
SELECT 
	f.title, 
    i.inventory_id,
    -- Determine whether the inventory is held by a customer
    inventory_held_by_customer(i.inventory_id) as held_by_cust
FROM film as f 
	INNER JOIN inventory AS i ON f.film_id=i.film_id 
WHERE
	-- Only include results where the held_by_cust is not null
    inventory_held_by_customer(i.inventory_id) IS NOT NULL;
-----------------------------------------------------------------
query result
film
inventory
title	inventory_id	held_by_cust
ACE GOLDFINGER	9	366
AFFAIR PREJUDICE	21	111
AFRICAN EGG	25	590
ALONE TRIP	81	236
AMERICAN CIRCUS	106	44
AMISTAD MIDSUMMER	112	349
ARMAGEDDON LOST	177	317
