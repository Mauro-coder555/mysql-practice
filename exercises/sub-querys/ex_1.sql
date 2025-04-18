-- Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).

SELECT *
FROM producto
WHERE id_fabricante = (SELECT id FROM fabricante WHERE nombre = "Lenovo")