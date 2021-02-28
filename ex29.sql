# Under the assumption that receipts of money (inc) and payouts (out) are registered not more than once a day for each collection point [i.e. the primary key consists of (point, date)], write a query displaying cash flow data (point, date, income, expense).
# Use Income_o and Outcome_o tables.

SELECT a.point, a.[date], a.inc, b.out
FROM Income_o a LEFT JOIN Outcome_o b
ON a.point = b.point AND a.[date] = b.[date]
UNION
SELECT y.point, y.[date], x.inc, y.out
FROM Income_o x RIGHT JOIN Outcome_o  y
ON x.point = y.point AND x.[date] = y.[date]
