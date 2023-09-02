SELECT 
  -- Extract the day of week date part from the rental_date
  EXTRACT(dow FROM rental_date) AS dayofweek,
  AGE(return_date, rental_date) AS rental_days
FROM rental AS r 
WHERE 
  -- Use an INTERVAL for the upper bound of the rental_date 
  rental_date BETWEEN CAST('2005-05-01' AS timestamp)
   AND CAST('2005-05-01' AS timestamp) + INTERVAL '90 day';
-----------------------------------------------
query result
rental
customer
inventory
film
dayofweek	rental_days
2	1 day, 23:11:00
2	3 days, 20:46:00
2	7 days, 23:09:00
2	9 days, 2:39:00
2	8 days, 5:28:00
2	2 days, 2:24:00
2	4 days, 21:23:00
-------------------------------------------------------
--Finally, use a CASE statement and DATE_TRUNC() to create a new column called past_due which will be TRUE if the rental_days is greater than the rental_duration otherwise, it will be FALSE.
SELECT 
  c.first_name || ' ' || c.last_name AS customer_name,
  f.title,
  r.rental_date,
  -- Extract the day of week date part from the rental_date
  EXTRACT(dow FROM r.rental_date) AS dayofweek,
  AGE(r.return_date, r.rental_date) AS rental_days,
  -- Use DATE_TRUNC to get days from the AGE function
  CASE WHEN DATE_TRUNC('day', AGE(r.return_date, r.rental_date)) > 
  -- Calculate number of d
    f.rental_duration * INTERVAL '1' day 
  THEN TRUE 
  ELSE FALSE END AS past_due 
FROM 
  film AS f 
  INNER JOIN inventory AS i 
  	ON f.film_id = i.film_id 
  INNER JOIN rental AS r 
  	ON i.inventory_id = r.inventory_id 
  INNER JOIN customer AS c 
  	ON c.customer_id = r.customer_id 
WHERE 
  -- Use an INTERVAL for the upper bound of the rental_date 
  r.rental_date BETWEEN CAST('2005-05-01' AS DATE) 
  AND CAST('2005-05-01' AS DATE) + INTERVAL '90 day';
--------------------------------------------------
query result
rental
customer
inventory
film
customer_name	title	rental_date	dayofweek	rental_days	past_due
CHARLOTTE HUNTER	BLANKET BEVERLY	2005-05-24 22:53:30	2	1 day, 23:11:00	false
TOMMY COLLAZO	FREAKY POCUS	2005-05-24 22:54:33	2	3 days, 20:46:00	false
MANUEL MURRELL	GRADUATE LORD	2005-05-24 23:03:39	2	7 days, 23:09:00	false
ANDREW PURDY	LOVE SUICIDES	2005-05-24 23:04:41	2	9 days, 2:39:00	true
DELORES HANSEN	IDOLS SNATCHERS	2005-05-24 23:05:21	2	8 days, 5:28:00	true
NELSON CHRISTENSON	MYSTIC TRUMAN	2005-05-24 23:08:07	2	2 days, 2:24:00	false
CASSANDRA WALTERS	SWARM GOLD	2005-05-24 23:11:53	2	4 days, 21:23:00	false
