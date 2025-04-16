-- Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.

SELECT f.nombre AS nombre_fabricante, MAX(p.precio), MIN(p.precio), AVG(p.precio)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre