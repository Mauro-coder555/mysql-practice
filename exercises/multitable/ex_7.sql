-- Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.

SELECT p.*
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
WHERE f.nombre = "Crucial" AND p.precio > 200