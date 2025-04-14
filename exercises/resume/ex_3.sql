-- Calcula el número de valores distintos de identificador de fabricante aparecen en la tabla productos.

SELECT DISTINCT(COUNT(id_fabricante))
FROM producto p