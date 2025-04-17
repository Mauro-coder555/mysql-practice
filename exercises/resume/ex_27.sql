-- Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. El listado debe mostrar el nombre de todos los fabricantes, es decir, si hay algún fabricante que no tiene productos con un precio superior o igual a 220€ deberá aparecer en el listado con un valor igual a 0 en el número de productos.

SELECT f.nombre, SUM(CASE WHEN p.precio >= 220 THEN 1 ELSE 0 END) AS total
FROM fabricante f
LEFT JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre