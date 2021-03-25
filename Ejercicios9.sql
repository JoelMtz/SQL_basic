---LEFT AND RIGHT
--usar la base datos
use Facturas
--- ver toda la tabla producto
SELECT * FROM producto
--- ver toda la tabla Cliente
SELECT * FROM Encargo
---------------------------------
--UNIR CON LEFT
--selecciona todo de encargo
SELECT * FROM Encargo AS EN
LEFT JOIN Producto as PR
ON EN.proID = PR.proID
--UNIR CON RIGHT
--selecciona todo de encargo
SELECT * FROM Encargo AS EN
RIGHT JOIN Producto as PR
ON EN.proID = PR.proID
--selecciona INNER
SELECT * FROM Encargo AS EN
INNER JOIN Producto as PR
ON EN.proID = PR.proID
--todos los clientes que tengan pedidos
SELECT * FROM Cliente AS CL
INNER JOIN Pedido AS PE
ON CL.DNI = PE.dni
ORDER BY CL.DNI
--LEFT
--todos los clientes que tengan pedidos
--los que no hay hecho pedidos no saldrán
SELECT * FROM Cliente AS CL
LEFT JOIN Pedido AS PE
ON CL.DNI = PE.dni
ORDER BY CL.DNI
--RIGHT
SELECT * FROM Cliente AS CL
RIGHT JOIN Pedido AS PE
ON CL.DNI = PE.dni
ORDER BY CL.DNI