-- Devuelve un listado de todos los productos que tienen un precio mayor o igual a la media de todos los productos de su mismo fabricante.

SELECT p.*
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
WHERE p.precio >= (
    SELECT AVG(p2.precio)
    FROM producto p2
    WHERE p2.id_fabricante = f.id
)