-- Devuelve una lista de todos los productos del fabricante Lenovo.


SELECT p.*
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
WHERE f.nombre = "Lenovo"