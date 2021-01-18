
--Crear una base de datos
CREATE DATABASE TestData  
GO 
--conexion del editor en la base de datos
USE TestData  
GO  
--crear una tabla
CREATE TABLE dbo.Products  
   (ProductID int PRIMARY KEY NOT NULL,  
   ProductName varchar(25) NOT NULL,  
   Price money NULL,  
   ProductDescription varchar(max) NULL)  
GO  
--Insertar datos en nuestra tabla
-- Standard syntax  
INSERT dbo.Products (ProductID, ProductName, Price, ProductDescription)  
    VALUES (1, 'Clamp', 12.48, 'Workbench clamp')  
GO 
-- para ver que es lo que hemos creado
SELECT * FROM dbo.Products

--Eliminar todas las filas
TRUNCATE TABLE TestData.dbo.Products;
GO

-- Changing the order of the columns  
INSERT dbo.Products (ProductName, ProductID, Price, ProductDescription)  
    VALUES ('Screwdriver', 50, 3.17, 'Flat head')  
GO  

-- Skipping the column list, but keeping the values in order  
INSERT dbo.Products  
    VALUES (75, 'Tire Bar', NULL, 'Tool for changing tires.')  
GO  

-- Dropping the optional dbo and dropping the ProductDescription column  
INSERT Products (ProductID, ProductName, Price)  
    VALUES (3000, '3 mm Bracket', 0.52)  
GO  

SELECT * FROM dbo.Products

--Actualizacion de la tabla productos
-- le pusimos otro nombre
UPDATE dbo.Products  
    SET ProductName = 'Flat Head Screwdriver'  
    WHERE ProductID = 50  
GO  
--LECTURA DE DATOS EN UNA TABLA
-- The basic syntax for reading data from a single table  
SELECT ProductID, ProductName, Price, ProductDescription  
    FROM dbo.Products  
GO  
-- Returns all columns in the table  
-- Does not use the optional schema, dbo  
SELECT * FROM Products  
GO
-- Returns only two of the columns from the table  
SELECT ProductName, Price  
    FROM dbo.Products  
GO  
-- Returns only two of the records in the table
--Devuelve solo dos filas, pero realmente solo una es menor que esa.
SELECT ProductID, ProductName, Price, ProductDescription  
    FROM dbo.Products  
    WHERE ProductID < 60  
GO   
-- Returns ProductName and the Price including a 7% tax  
-- Provides the name CustomerPays for the calculated column 
-- Hicimos una nueva columna y la llamamos CustomerPays
SELECT ProductName, Price * 1.07 AS CustomerPays  
    FROM dbo.Products  
GO  
--Creacion de una vista 
CREATE VIEW vw_Names  
   AS  
   SELECT ProductName, Price FROM Products;  
GO 
--Abrir o ver una lista
--las vistas se usan como tablas
SELECT * FROM vw_Names;  
GO 
--Procedimiento almacenado
--Nos va a devolver todos los productos donde el costo
--sea menor que el parametro de entrada
--se llama pr_Names y un parametro de entrada @varPrice tipo money
CREATE PROCEDURE pr_Names @VarPrice money  
   AS  
   BEGIN  
      -- The print statement returns text to the user  
      PRINT 'Products less than ' + CAST(@VarPrice AS varchar(10));  
      -- A second statement starts here  
      SELECT ProductName, Price FROM vw_Names  
            WHERE Price < @varPrice;  
   END  
GO    

--Probar el procedimiento alamacenado
--Devuelve los nombres de dos productos introducidos con un precio menor que diez	
EXECUTE pr_Names 10.00;  
GO 