	 --COMANDOS 


--FUncion LEFT 
Declare @var1 varchar(20)
	set @var1 = 'Ramiro'
Print LEFT(@Var1,2)

--FUncion RIGHT
Declare @var2 varchar(20)
	set @var2 = 'Gonzales'
Print RIGHT(@Var2,2)

--Funcion LEN sirve para contar la cantidad de caracteres que posee una variable tipo varchar o char
Declare @var1 varchar(20)
Declare @var2 varchar(20)
	set @var1 = 'Ramiro'
	set @var2 = 'Gonzales'
Print LEFT(@var1,LEN(@var1)-1)-- +  LEFT(@var2,1)

--Funciones LOWER sirve para cambiar todo a minisculas Y UPPER cambia todo a mayusculas
Declare @var1 varchar(20)
Declare @var2 varchar(20)
	set @var1 = 'RAMIRO'
	set @var2 = 'GONZALES'
print UPPER(LEFT(@var1,1)) + LOWER(RIGHT(@var1,LEN(@var1)-1)) + ' ' + UPPER(LEFT(@var2,1)) + LOWER(RIGHT(@var2,LEN(@var2)-1))

--FUncion REPLACE permite cambiar un caracter por otro en variables o campos de una tabla

Declare @var1 varchar(20)
Declare @var2 varchar(20)
	set @var1 = 'Ramir"o'
	set @var2 = 'Gonz@ales'
SELECT REPLACE(@var1,'"','')
SELECT REPLACE(@var2,'@','')

--FUncion REPLICATE nos permite repetir un caracter o una cadena.

Declare @var1 varchar(20)
Declare @var2 varchar(20)
	set @var1 = 'Ramir"o'
	set @var2 = 'Gonz@ales'
select @var1 + @var2 

print REPLICATE('0',5)

--Funciones LTRIM Y RTRIM Permiten eliminar los espacios en una cadena de caracteres

Declare @var1 varchar(20)
Declare @var2 varchar(20)
	set @var1 = 'Ramir        '
	set @var2 = 'Gonz@ales       '
select LTRIM(RTRIM(@var1)) + ' ' + LTRIM(RTRIM(@var2)) + '*'

--Funcion CONCAT nos permite concatenar valores

Declare @var1 varchar(20)
Declare @var2 varchar(20)
	set @var1 = 'Ramiro'
	set @var2 = 'Gonzales'
select CONCAT(LTRIM(RTRIM(@var1)),' ',LTRIM(RTRIM(@var2)))


EXEC S_paciente 5

/*Uso sentencia ALTER, DROP Y TRUNCATE 
ALTER TABLE Paciente ADD estado smallint 
ALTER TABLE Paciente ALTER COLUMN estado bit 
ALTER TABLE Paciente DROP COLUMN estado
*/

--DROP Sirve para eliminar tablas 
CREATE table ejemplo (Campo1 int, campo2 int)
DROP TABLE ejemplo

--TRUNCATE Sirve para eliminar registors de una tabla
CREATE table ejemplo (Campo0 int IDENTITY (1,1), campo1 int, campo2 int)
select * from ejemplo
insert into ejemplo values (2,3)
TRUNCATE TABLE ejemplo 

CREATE TYPE Pais FROM CHAR(3)	

 --Select
SELECT * FROM Paciente

--Insertar datos en tabla paciente.
INSERT INTO Paciente Values('Carlos','Mijangos','1999-04-22','Villa Nueva ','ESP','','','')

SELECT * FROM Turno
insert into Turno values('20120115',2,'Obs')

--Insertar datos indicando los datos que se insertaran en la tabla. 
INSERT INTO Paciente (nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion) 
Values('Carlos1','Gomez','2017-04-04','piedra buena 21','ESP','','','')

--Seleccionar por apellido en la tabla con el comando WHERE
	Select * From Paciente Where Apellido = 'Gomez'
--Comando Delete para eliminación de datos en la tabla paciente
	Delete FROM Paciente WHERE idPaciente = 8

--Comando UPDATE 

SELECT * FROM Paciente

--Comando UPDATE
UPDATE Paciente SET	observacion='Pacientes creados desde UI'

SELECT * FROM Paciente WHERE Nombre='Roberto' and apellido='Perez'

--COMANDO DELETE 
DELETE FROM Paciente WHERE nombre='Roberto' and apellido='Perez'

SELECT * FROM Paciente 

--UPDATE Y SET 
UPDATE Paciente SET observacion='Observacion modificada' WHERE idPaciente=7

--COMANDOS SELECT WHERE ORDER BY
SELECT TOP 2 * FROM Paciente WHERE apellido='Mijangos'

SELECT TOP 1 * FROM Turno ORDER BY fechaTurno DESC

SELECT * FROM Paciente ORDER BY fNacimiento DESC

SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento DESC

SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento ASC

-- Distinct

SELECT * FROM Paciente 
SELECT DISTINCT (apellido) FROM Paciente
SELECT DISTINCT idPaciente, apellido FROM Paciente

--Clausula GROUP BY 

SELECT apellido FROM Paciente GROUP BY apellido

--Funciones Max y Min

SELECT MAX(idpaciente) FROM Paciente
SELECT MIN(idpaciente) FROM Paciente
SELECT apellido, MIN(idpaciente) FROM Paciente GROUP BY apellido 

--Funcion SUM
SELECT * FROM Paciente
SELECT SUM(idPaciente),apellido FROM Paciente GROUP BY apellido

---Funcion AVG
SELECT * FROM Paciente
SELECT AVG(idPaciente) FROM Paciente

--Funcion COUNT
SELECT * FROM Paciente
SELECT COUNT(idPaciente) FROM Paciente
SELECT COUNT(idPaciente) FROM Paciente WHERE apellido ='mijangos'

-- Funcion HAVING 
SELECT * FROM Turno
SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado) > 1








