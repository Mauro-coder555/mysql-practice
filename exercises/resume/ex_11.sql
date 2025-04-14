-- Calcula la media del precio de todos los productos del fabricante Asus.

SELECT AVG(p.precio)
FROM producto p
JOIN fabricante f 
ON p.id_fabricante = f.id
WHERE f.nombre = "Asus"