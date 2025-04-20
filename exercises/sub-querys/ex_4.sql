-- Lista el nombre del producto más barato del fabricante Hewlett-Packard.

SELECT nombre
FROM producto
WHERE id_fabricante = (SELECT id FROM fabricante WHERE nombre = 'Hewlett-Packard')
ORDER BY precio ASC
LIMIT 1;