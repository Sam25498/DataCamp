-- Let's add a record to the table
INSERT INTO transactions (transaction_date, amount, fee) 
VALUES ('2018-09-24', 5454, '30');

-- Doublecheck the contents
SELECT *
FROM transactions;

-----------------------------------------------
query result
transactions
transaction_date	amount	fee
1999-01-08	500	20
2001-02-20	403	15
2001-03-20	3430	35
2018-09-24	5454	30
