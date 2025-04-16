-- Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. Es necesario mostrar el nombre del fabricante.

SELECT f.nombre AS nombre_fabricante, MAX(p.precio), MIN(p.precio), AVG(p.precio), COUNT(p.id) AS total_productos
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre
HAVING AVG(p.precio) > 200