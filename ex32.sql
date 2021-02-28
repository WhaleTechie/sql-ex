# One of the characteristics of a ship is one-half the cube of the calibre of its main guns (mw).
# Determine the average ship mw with an accuracy of two decimal places for each country having ships in the database.

SELECT Country, CAST(AVG(POWER(bore,3)/2) AS NUMERIC (6,2)) AS mv
FROM (
SELECT Country, bore, name
FROM Classes JOIN Ships 
ON Classes.class = Ships.class
UNION
SELECT Country, bore, ship
FROM Classes JOIN Outcomes 
ON Classes.class = Outcomes.ship
) AS countries
GROUP BY Country
