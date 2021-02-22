#Find the model number, RAM and screen size of the laptops with prices over $1000.

SELECT Distinct Model, Ram, Screen
FROM Laptop
WHERE price > 1000
