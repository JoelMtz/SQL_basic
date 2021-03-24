--usar la base datos
use Facturas
--- ver toda la tabla
SELECT * FROM producto
---------------------------------
--hacemos la suma de valoracion
--agrupada por marca
SELECT SUM(valoracion) AS SumaValora,
marca
FROM producto
GROUP BY marca
---agrupamos por las que tengan una T
--tener cuidado con la variable de agrupa
SELECT SUM(valoracion) AS SumaValora,
nombre
FROM producto
WHERE nombre LIKE 'T%'
AND valoracion IS NOT NULL
GROUP BY nombre
--USAR HAVING
--usado para filtrar grupos o 
--valores con agregados
--grupos con suma mayor a 22
SELECT SUM(valoracion) AS SumaValora,
nombre
FROM producto
WHERE nombre LIKE 'T%'
AND valoracion IS NOT NULL
GROUP BY nombre
HAVING SUM(valoracion) > 22
--
SELECT SUM(valoracion) AS SumaValora,
		AVG(valoracion) AS Promedio,
nombre
FROM producto
WHERE nombre LIKE 'T%'
AND valoracion IS NOT NULL
GROUP BY nombre
HAVING AVG(valoracion) > 4
