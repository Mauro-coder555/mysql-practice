-- Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).

SELECT nombre
FROM fabricante f
WHERE NOT EXISTS (SELECT 1 FROM producto p WHERE p.id_fabricante = f.id)