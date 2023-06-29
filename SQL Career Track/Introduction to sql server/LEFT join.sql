-- Complete the LEFT JOIN, returning all rows from the specified columns from invoiceline and any matches from invoice.

SELECT 
  invoiceline_id,
  unit_price, 
  quantity,
  billing_state
  -- Specify the source table
FROM invoiceline
  -- Complete the join to the invoice table
LEFT JOIN invoice
ON invoiceline.invoice_id = invoice.invoice_id;

---------------------------------------------------------------
query result
invoiceline
invoice
invoiceline_id	unit_price	quantity	billing_state
1	0.99	1	NULL
2	0.99	1	NULL
3	0.99	1	NULL
4	0.99	1	NULL
5	0.99	1	NULL
6	0.99	1	NULL
7	0.99	1	NULL
...
  94	0.99	1	NS
95	0.99	1	NS
96	0.99	1	NS
97	0.99	1	NS
98	0.99	1	NULL
99	0.99	1	NULL
100	0.99	1	NULL
Showing 100 out of 2240 rows
