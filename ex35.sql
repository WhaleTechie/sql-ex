# Find models in the Product table consisting either of digits only or Latin letters (A-Z, case insensitive) only.
# Result set: model, type.

SELECT model, type
FROM Product
WHERE model NOT like '%[^A-Z]%'
OR model not like '%[^0-9]%'
