-- Lista el identificador de los fabricantes que tienen productos en la tabla producto.

SELECT f.id
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
