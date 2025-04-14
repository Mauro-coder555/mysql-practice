-- Calcula la suma de todos los productos del fabricante Asus.

SELECT SUM(p.precio)
FROM producto p
JOIN fabricante f 
ON p.id_fabricante = f.id
WHERE f.nombre = "Asus"