-- Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o NOT IN).

SELECT nombre
FROM fabricante
WHERE id IN (SELECT id_fabricante FROM producto)