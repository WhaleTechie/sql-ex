# Find countries that ever had classes of both battleships (‘bb’) and cruisers (‘bc’).

SELECT country 
FROM Classes 
WHERE type in ('bb','bc') 
GROUP BY country 
HAVING COUNT(DISTINCT type) =  2
