-- Devuelve un listado con los nombres de los fabricantes donde la suma del precio de todos sus productos es superior a 1000 €.

SELECT f.nombre, SUM(p.precio) AS total
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre
HAVING SUM(p.precio) >= 1000