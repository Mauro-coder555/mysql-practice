-- Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).

SELECT nombre
FROM fabricante
WHERE id = ANY (SELECT id_fabricante FROM producto)