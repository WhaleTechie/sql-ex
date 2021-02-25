#Find the makers producing PCs but not laptops.

SELECT DISTINCT Maker
FROM Product
WHERE type = 'PC'
EXCEPT 
SELECT DISTINCT Maker
FROM Product
WHERE type = 'Laptop'
