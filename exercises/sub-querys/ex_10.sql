-- Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando ALL o ANY).

SELECT nombre 
FROM fabricante
WHERE id <> ALL (SELECT id_fabricante FROM producto)