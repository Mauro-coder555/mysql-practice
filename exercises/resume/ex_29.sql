-- Devuelve un listado con el nombre del producto más caro que tiene cada fabricante. El resultado debe tener tres columnas: nombre del producto, precio y nombre del fabricante. El resultado tiene que estar ordenado alfabéticamente de menor a mayor por el nombre del fabricante.

SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE (p.id_fabricante, p.precio) IN (
    SELECT id_fabricante, MAX(precio)
    FROM producto
    GROUP BY id_fabricante
)
ORDER BY f.nombre ASC;