-- Lista el nombre y el precio del producto más barato.

SELECT nombre, precio
FROM producto
WHERE precio = (SELECT MIN(precio) FROM producto)
