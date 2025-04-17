-- Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del fabricante.

SELECT f.nombre, AVG(p.precio)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre