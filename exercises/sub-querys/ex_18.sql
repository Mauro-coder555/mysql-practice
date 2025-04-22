-- Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número de productos que el fabricante Lenovo.

SELECT f.nombre
FROM fabricante f
JOIN producto p ON f.id = p.id_fabricante
GROUP BY f.nombre
HAVING COUNT(p.id) = (
    SELECT COUNT(p2.id)
    FROM producto p2
    JOIN fabricante f2 ON f2.id = p2.id_fabricante
    WHERE f2.nombre = "Lenovo"
);
