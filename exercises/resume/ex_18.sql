-- Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. No es necesario mostrar el nombre del fabricante, con el identificador del fabricante es suficiente.

SELECT f.id, MAX(p.precio), MIN(p.precio), AVG(p.precio), COUNT(p.id) AS total_productos
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.id
HAVING AVG(p.precio) > 200