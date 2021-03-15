--usamos la BD Facturas
USE Facturas
-- seleccionamos la tabla clientes
SELECT * FROM Cliente
--seleccionamos solo el Nombre
SELECT Nombre FROM Cliente
--seleccionar dos columnas email y edad
SELECT Email, Edad FROM Cliente
-- ver la tabla producto
SELECT * FROM Producto
-- todas nombre de producto
SELECT nombre FROM Producto
-- las primeras 8 pero en orden
SELECT TOP(8) nombre FROM Producto
--
SELECT TOP(5) cantidad FROM Producto
-- PORCENTAJE seleecionamos el porcentaje
SELECT TOP(50) PERCENT nombre
FROM Producto
--filas unicas vemos cuantos prodcutos hay 
SELECT DISTINCT nombre FROM Producto
--usar un alias, poner nombre a la columna requerida
SELECT nombre AS Nombre_producto FROM Producto