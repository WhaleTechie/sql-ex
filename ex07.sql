#Get the models and prices for all commercially available products (of any type) produced by maker B.

SELECT a.model, price 
FROM (SELECT model, price 
 FROM PC 
 UNION
 SELECT model, price 
  FROM Laptop
 UNION
 SELECT model, price 
 FROM Printer
 ) AS a 
JOIN Product 
ON a.model = Product.model
WHERE Product.maker = 'B'
