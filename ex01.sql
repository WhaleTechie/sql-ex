#Find the model number, speed and hard drive capacity for all the PCs with prices below $500.

SELECT model, speed, hd
FROM PC
WHERE price < 500
