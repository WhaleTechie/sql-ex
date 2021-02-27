# Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
# Result set: maker

SELECT Product.maker
FROM Product
INNER JOIN PC
ON Product.model = PC.model
WHERE PC.speed >= 750
INTERSECT
SELECT Product.maker
FROM Product
INNER JOIN Laptop
ON Product.model = Laptop.model
WHERE Laptop.speed >= 750
