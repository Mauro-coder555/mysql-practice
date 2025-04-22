-- Lista el nombre de cada fabricante con el nombre y el precio de su producto más caro.

SELECT f.nombre, p.precio
FROM fabricante f
JOIN producto p
ON p.id_fabricante = f.id
WHERE p.precio = (
    SELECT MAX(precio)
    FROM producto p2
    WHERE p2.id_fabricante = f.id
    )
