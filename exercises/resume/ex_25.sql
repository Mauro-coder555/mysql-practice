-- Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.

SELECT f.nombre, COUNT(p.id)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre
HAVING  COUNT(p.id) >= 2