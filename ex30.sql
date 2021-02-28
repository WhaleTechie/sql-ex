# Under the assumption that receipts of money (inc) and payouts (out) can be registered any number of times a day for each collection point [i.e. the code column is the primary key], display a table with one corresponding row for each operating date of each collection point.
# Result set: point, date, total payout per day (out), total money intake per day (inc).
# Missing values are considered to be NULL.

WITH United(point, date, out, inc) AS (
SELECT point, date, null, inc
FROM Income
UNION ALL
SELECT point, date, out, null
FROM Outcome
)

SELECT point, date, SUM(out) as Outcome, SUM(inc) as Income
FROM United
GROUP BY point, date
