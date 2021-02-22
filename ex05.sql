#Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.

SELECT model, speed, hd FROM PC
WHERE  (cd = '12x'or cd = '24x')
AND price < 600
