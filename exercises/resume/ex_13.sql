-- Calcula el precio más caro de todos los productos del fabricante Asus.

SELECT MAX(p.precio)
FROM producto p
JOIN fabricante f 
ON p.id_fabricante = f.id
WHERE f.nombre = "Asus"