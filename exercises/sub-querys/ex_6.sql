-- Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.

SELECT *
FROM producto
WHERE id_fabricante = (SELECT id FROM fabricante WHERE nombre = "Asus")
      AND precio > (SELECT AVG(precio) FROM producto 
                    WHERE id_fabricante = (SELECT id FROM fabricante WHERE nombre = "Asus"))