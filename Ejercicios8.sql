--usar la base datos
use Facturas
--- ver toda la tabla producto
SELECT * FROM producto
--- ver toda la tabla Cliente
SELECT * FROM Encargo
---------------------------------
--UNIR CON INNER
--selecciona todo de encargo
SELECT * FROM Encargo AS EN
INNER JOIN Producto as PR
ON EN.proID = PR.proID
--podemos ordenar y ver los repetidos
SELECT * FROM Encargo AS EN
INNER JOIN Producto as PR
ON EN.proID = PR.proID
ORDER BY EN.proID
--seleccionar solo algunos campos
SELECT EN.*,PR.nombre, PR.modelo, PR.valoracion
FROM Encargo AS EN
INNER JOIN Producto AS PR
ON EN.proID = PR.proID
-- Es lo mismo?
SELECT EN.*,PR.nombre, PR.modelo, PR.valoracion
FROM Encargo AS EN
INNER JOIN Producto AS PR
ON PR.proID = EN.proID
WHERE EN.pedID = 23
-- si solo quiero unas de EN y otras de PR
SELECT EN.pedID, EN.cantidad, PR.nombre, PR.valoracion
FROM Encargo AS EN
INNER JOIN Producto AS PR
ON PR.proID = EN.proID
--declaramos una nueva variable
DECLARE @id SMALLINT=18
--hacemos la seleccion y una nueva variable
SELECT PR.*, EN.pedID,EN.cantidad, (precio * EN.cantidad) as Ganancia
FROM Producto AS PR
INNER JOIN Encargo AS EN
ON PR.proID =  EN.proID
WHERE PR.proID = @id