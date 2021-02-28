# Find the ships that `survived for future battles`; that is, after being damaged in a battle, they participated in another one, which occurred later.

WITH CTE AS (SELECT * FROM outcomes o join battles b on o.battle=b.name)
SELECT DISTINCT a1.ship 
FROM CTE a1, CTE a2 
WHERE a1.ship = a2.ship AND a1.result = 'damaged'AND a1.date < a2.date
