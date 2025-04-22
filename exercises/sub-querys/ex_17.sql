-- Lista el nombre del producto más caro del fabricante Lenovo.

SELECT p.nombre
FROM fabricante f
JOIN producto p
ON f.id = p.id_fabricante
WHERE f.nombre = "Lenovo"
AND precio = (
    SELECT MAX(precio)
    FROM producto p2
    WHERE p2.id_fabricante = f.id
)