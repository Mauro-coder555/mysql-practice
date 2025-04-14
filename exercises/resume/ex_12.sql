-- Calcula el precio más barato de todos los productos del fabricante Asus.

SELECT MIN(p.precio)
FROM producto p
JOIN fabricante f 
ON p.id_fabricante = f.id
WHERE f.nombre = "Asus"