-- Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.

SELECT DISTINCT f.id, f.nombre
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
