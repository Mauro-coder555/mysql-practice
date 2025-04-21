-- Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.

SELECT * 
FROM producto
WHERE precio <= ALL (SELECT precio FROM producto)