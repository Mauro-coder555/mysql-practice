-- Lista el precio medio los productos de cada fabricante, mostrando solamente el identificador del fabricante.

SELECT f.id, AVG(p.precio)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.id