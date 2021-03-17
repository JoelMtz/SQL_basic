--usar la base datos
use Facturas
--- ver toda la tabla
SELECT * FROM producto
---ordenar marca por valoracion
SELECT marca, valoracion FROM Producto
	order by valoracion
---------------------------------
--seleccionar marcas con valoracion mayor a 6
SELECT marca, valoracion FROM Producto
	WHERE valoracion > 6
--marcas menos valoracion 5
SELECT marca, valoracion FROM Producto
	WHERE valoracion <> 5
--las marcas entre 7 y 8
SELECT marca, valoracion FROM Producto
	WHERE valoracion BETWEEN 7 AND 8
--las marcas que no esten entre 7 y 8
SELECT marca, valoracion FROM Producto
	WHERE valoracion NOT BETWEEN 7 AND 8
-- ver los null de marca 
SELECT marca, valoracion FROM producto
	WHERE marca IS NULL
--Los que no sean nulls
SELECT marca, valoracion FROM producto
	WHERE marca IS NOT NULL