-- Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.

SELECT f.nombre, AVG(p.precio)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre
HAVING AVG(p.precio) >= 150