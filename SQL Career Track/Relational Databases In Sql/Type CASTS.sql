-- Calculate the net amount as amount + fee
SELECT transaction_date, amount + CAST(fee AS INTEGER) AS net_amount
FROM transactions;

------------------------------------------------------
query result
transactions
transaction_date	net_amount
1999-01-08	520
2001-02-20	418
2001-03-20	3465
2018-09-24	5484
