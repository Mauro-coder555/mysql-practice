-- Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. No es necesario mostrar el nombre de los fabricantes que no tienen productos que cumplan la condición.

SELECT f.nombre, COUNT(p.id) AS total
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
WHERE p.precio >= 220
GROUP BY f.nombre
