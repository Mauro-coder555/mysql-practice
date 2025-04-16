-- Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también debe incluir los fabricantes que no tienen ningún producto. El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el resultado descendentemente por el número de productos.

SELECT f.nombre AS nombre_fabricante, COUNT(p.id) AS numero_productos
FROM fabricante f
LEFT JOIN producto p
ON f.id = p.id_fabricante
GROUP BY f.nombre
ORDER BY COUNT(*) DESC
