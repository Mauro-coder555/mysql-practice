-- Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.

SELECT nombre
FROM producto
WHERE NOT (precio >= 400) -- Se respeta de manera literal el enunciado