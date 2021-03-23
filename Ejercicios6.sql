--usar la base datos
use Facturas
--- ver toda la tabla
SELECT * FROM producto
---------------------------------
--num de caracteres
SELECT modelo, LEN(modelo) AS cuantas
FROM producto 
--Letras a la izquierda
SELECT modelo, LEFT(modelo,3) AS cuantas
FROM producto 
--Letras a la izquierda
SELECT modelo, LEFT(modelo,3) AS cuantas
FROM producto 
--Encontrar un caracter especifico dentro de una cadena
SELECT CHARINDEX('or', nombre) AS buscaror,
nombre
FROM producto 
--Extrae la parte media de una linea
--empezar en 3 y extraer 9 caracteres
SELECT SUBSTRING(modelo,3,9) AS cuantas,
nombre
FROM producto 
--reemplazar or por XALE
SELECT
TOP(40) REPLACE(nombre,'or','XALE') AS replace_with_hyphen
FROM Producto