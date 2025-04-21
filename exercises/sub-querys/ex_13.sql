-- Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).

SELECT f.nombre
FROM fabricante f
WHERE EXISTS (SELECT 1 FROM producto p WHERE p.id_fabricante = f.id)