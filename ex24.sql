# List the models of any type having the highest price of all products present in the database.

WITH model AS ( SELECT model FROM Product ),
price AS (SELECT model, MAX(price) AS price FROM PC
GROUP BY model
UNION
SELECT model, MAX(price) FROM Laptop
GROUP BY model
UNION
SELECT model, MAX(price) FROM Printer
GROUP BY model)
SELECT m.model FROM
model m INNER JOIN price p
ON m.model = p.model
WHERE p.price = (SELECT MAX(price) FROM price)
