# Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.

SELECT p.maker as maker, MAX(price) 
FROM Product as p JOIN PC as c
ON p.model=c.model
GROUP BY p.maker
