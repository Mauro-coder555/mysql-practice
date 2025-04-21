-- Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando IN o NOT IN).

SELECT nombre
FROM fabricante
WHERE id NOT IN (SELECT id_fabricante FROM producto)