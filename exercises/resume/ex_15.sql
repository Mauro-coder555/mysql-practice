-- Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.

SELECT
 MAX(p.precio) AS precio_maximo,
 MIN(p.precio) AS precio_minimo,
 COUNT(p.id)  
FROM producto p
JOIN fabricante f 
ON p.id_fabricante = f.id
WHERE f.nombre = "Crucial"