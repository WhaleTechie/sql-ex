# Find the makers producing at least three distinct models of PCs.
# Result set: maker, number of PC models.

SELECT product.maker as Maker, count(*) as Number_of_models
FROM product
WHERE product.type = 'PC'
GROUP BY product.maker
HAVING count(*) >= 3
