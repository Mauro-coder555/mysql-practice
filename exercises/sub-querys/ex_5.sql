-- Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.

SELECT *
FROM producto
WHERE precio >= (
    SELECT MAX(precio)
    FROM producto
    WHERE id_fabricante = (
        SELECT id 
        FROM fabricante 
        WHERE nombre = 'Lenovo'
    )
)