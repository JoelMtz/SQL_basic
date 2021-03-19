--usar la base datos
use Facturas
--- ver toda la tabla
SELECT * FROM producto
---------------------------------
--seleccionar marcas con valoracion mayor a 6
SELECT marca, valoracion FROM Producto
	WHERE valoracion > 6
--seleccionar marca AMD con valoracion mayor a 6
SELECT marca, valoracion FROM Producto
	WHERE valoracion > 6 AND marca ='AMD'
---
SELECT marca, valoracion FROM Producto
	WHERE valoracion > 8 OR valoracion =4.2
-- NOS DA ERROR YA QUE NO ESPECIFICAMOS QUE SOLO AMD
SELECT marca, valoracion FROM Producto
WHERE marca = 'AMD' AND valoracion > 8 OR valoracion =5.4
-- solo los AMD
SELECT marca, valoracion FROM Producto
WHERE marca = 'AMD' AND (valoracion > 8 OR valoracion =5.4)
-- seleccionar solo esas marcas
SELECT marca, valoracion FROM Producto
	WHERE marca IN ('AMD','Asus','ElGato')
-- marcas con esas valoraciones especificas
SELECT marca, valoracion FROM Producto
	WHERE valoracion IN (6.4,7,9.8)
--buscar donde empiece con la letra A
SELECT marca, valoracion FROM Producto
	WHERE marca LIKE 'A%'