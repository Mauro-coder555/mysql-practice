-- Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.

SELECT p.nombre, p.precio, f.nombre
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
ORDER BY f.nombre ASC