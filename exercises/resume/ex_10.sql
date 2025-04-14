-- Calcula el número de productos que tiene el fabricante Asus.

SELECT COUNT(p.id)
FROM producto p
JOIN fabricante f 
ON p.id_fabricante = f.id
WHERE f.nombre = "Asus"