--usar la base datos
use Facturas
--- ver toda la tabla
SELECT * FROM producto
---ordenar marca por valoracion
SELECT marca, valoracion FROM Producto
	order by valoracion
--ordenar marca por valoracion orden desc
--asi podemos ver las mejores
SELECT marca, valoracion FROM Producto
	order by valoracion DESC
--ordenamos marca, valoracion, modelo por valoracion y cantidad
--asi podemos ver las mejores
SELECT marca, valoracion, modelo FROM Producto
	order by valoracion DESC, cantidad 
--tener cuidado que podemos repetir las columnas
--SELECT marca, valoracion, modelo, marca FROM Producto
--	order by cantidad 
--podemos ordenar aunque no esten en el select
SELECT marca, valoracion, modelo FROM Producto
	order by cantidad 
--podemos ordenar por texto
SELECT marca, valoracion, modelo FROM Producto
	order by marca