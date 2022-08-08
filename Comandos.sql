	 --COMANDOS 

EXEC S_paciente 5



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








