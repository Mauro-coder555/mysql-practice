-- Lista el nombre y el precio del producto más caro.

SELECT nombre, precio
FROM producto
WHERE precio = (SELECT MAX(precio) FROM producto)
