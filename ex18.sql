# Find the makers of the cheapest color printers.
# Result set: maker, price.

SELECT DISTINCT Product.Maker, Printer.price
FROM Product JOIN Printer ON Product.model = Printer.model
WHERE Printer.price = (SELECT MIN(price) FROM Printer WHERE color = 'y')
AND Printer.color = 'y'
