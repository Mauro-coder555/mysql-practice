-- Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€.

SELECT f.nombre, COUNT(*)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
WHERE p.precio >= 180  
GROUP BY f.nombre
 