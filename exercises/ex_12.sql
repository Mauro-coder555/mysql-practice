-- Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.

SELECT DISTINCT(f.id)
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante