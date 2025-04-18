-- Lista el nombre del producto más caro del fabricante Lenovo.

SELECT nombre
FROM producto
WHERE id_fabricante = (SELECT id FROM fabricante WHERE nombre = 'Lenovo')
ORDER BY precio DESC
LIMIT 1;