# Get the laptop models that have a speed smaller than the speed of any PC.
# Result set: type, model, speed.

SELECT DISTINCT Product.type, Laptop.model, Laptop.speed
FROM Product, Laptop, PC
WHERE Laptop.speed < (SELECT MIN(speed) FROM PC)
AND Product.type = 'Laptop'
