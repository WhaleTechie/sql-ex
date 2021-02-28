# Find classes for which only one ship exists in the database (including the Outcomes table).

SELECT a.class 
FROM (
SELECT Ships.name AS name, Ships.class 
FROM Ships 
JOIN Classes ON Ships.class = Classes.class
UNION 
SELECT Outcomes.ship AS name, Classes.class FROM Outcomes 
JOIN Classes ON Outcomes.ship = Classes.class
) a 
GROUP BY a.class 
HAVING COUNT(*) = 1
