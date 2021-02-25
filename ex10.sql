#Find the printer models having the highest price. Result set: model, price.

SELECT DISTINCT model, price
FROM Printer
WHERE price = (SELECT max(price) 
 FROM Printer
 )
