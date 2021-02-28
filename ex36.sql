# List the names of lead ships in the database (including the Outcomes table).

SELECT a.name FROM(
SELECT Ships.name FROM Ships 
JOIN Classes ON Ships.class = Classes.class 
WHERE ships.name = ships.class
UNION 
SELECT Outcomes.ship FROM Outcomes 
JOIN Classes 
ON Outcomes.ship = Classes.class 
WHERE outcomes.ship = classes.class) a
