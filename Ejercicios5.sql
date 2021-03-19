--usar la base datos
use Facturas
--- ver toda la tabla
SELECT * FROM producto
---------------------------------
--hacemos la suma de cantidad
SELECT SUM(cantidad) AS SumaCantidades
FROM Producto
--recuentos de los que pidieron
SELECT COUNT(cantidad) AS ConteoCantidades
FROM Producto
--valores unicos
SELECT COUNT(DISTINCT cantidad) AS NOCantidades
FROM Producto
--sacamos el min de cantidad
SELECT MIN(cantidad) AS MInCantidades
FROM Producto
--sacamos el min de cantidad mayor que cero
SELECT MIN(cantidad) AS MInCantidades
FROM Producto
WHERE cantidad > 3
--sacamos el mAx de cantidad
SELECT MAX(cantidad) AS MInCantidades
FROM Producto
--sacamos el AVG de cantidad
SELECT AVG(cantidad) AS MInCantidades
FROM Producto
