-- Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.

SELECT p.*
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
WHERE f.nombre IN ("Asus","Hewlett-Packard","Seagate")