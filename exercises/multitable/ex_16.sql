-- ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.

-- Depende de la definición de la columna id_fabricante en la tabla producto:

--  Si id_fabricante acepta valores NULL: Sí, pueden existir productos sin un fabricante asociado.
--  Si id_fabricante tiene una restricción NOT NULL: No, todos los productos deben tener un fabricante asociado.

-- Es una práctica común en el diseño de bases de datos permitir valores nulos en claves foráneas en ciertos escenarios
-- donde la relación no es estrictamente obligatoria. Por ejemplo, un producto podría estar en proceso de asignación
-- a un fabricante o podría ser un producto genérico sin una marca específica.