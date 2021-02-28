# Using Product table, find out the number of makers who produce only one model.

SELECT COUNT(sub.maker) qty
FROM (
SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(*) = 1
) AS sub
