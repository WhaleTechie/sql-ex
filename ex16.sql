# Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
# Result set: model with the bigger number, model with the smaller number, speed, and RAM.

SELECT DISTINCT pc1.model, pc2.model, pc1.speed, pc1.ram 
FROM PC as pc1 JOIN PC as pc2
ON pc1.model <> pc2.model
WHERE pc1.speed = pc2.speed AND pc1.ram = pc2.ram
AND pc1.model > pc2.model
