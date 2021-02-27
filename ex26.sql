# Find out the average price of PCs and laptops produced by maker A.
# Result set: one overall average price for all items.

SELECT AVG(pr.price) as AVG_price
FROM (
SELECT price
FROM PC
WHERE model in (SELECT model
From Product
WHERE maker = 'A'
) 
UNION ALL
SELECT price
FROM Laptop 
WHERE model in (SELECT model
From Product
WHERE maker = 'A'
) 
) AS pr
