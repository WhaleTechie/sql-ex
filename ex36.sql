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


# NOTE
# Translation of LIKE cases

LIKE %[0-9]% - a string with digits (string contains digits)
NOT LIKE %[0-9]% a string without digits (string doesnt contain digits)
NOT LIKE %[^0-9]% - a string only with digits (string does not contain not digits)
LIKE %[^0-9]% - string countains not digits
