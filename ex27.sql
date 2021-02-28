# Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
# Result set: maker, average HDD capacity.

SELECT maker, AVG(hd) as AVG_HDD
FROM Product a JOIN PC b 
ON a.model = b.model
WHERE maker IN (
SELECT maker
FROM Product
WHERE type='printer'
)
GROUP BY maker
