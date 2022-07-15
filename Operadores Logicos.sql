

--OPERADOR AND
SELECT * FROM Paciente
INSERT INTO Paciente (nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion) 
Values('Liesel','Mijangos','2017-04-04','Marianita','ESP','','','')
SELECT * FROM Paciente WHERE apellido ='Mijangos' and nombre ='Liesel' and idPaciente = 7

--OPERADOR OR 
SELECT * FROM Paciente WHERE apellido ='Mijangos' OR nombre ='Liesel' OR idPaciente = 6

--Operador IN
SELECT * FROM Paciente 
SELECT * FROM Turno WHERE estado IN(2,1,3)
SELECT * FROM Paciente WHERE apellido IN('Mijangos','Mayorca','Veliz')

--Operador LIKE para buscar de forma en general usando el signo %
SELECT * FROM Paciente
SELECT * FROM Paciente WHERE nombre LIKE 'Car%'

-- Operador NOT Permite negar cualquier opeador usado con anterioridad 
SELECT * FROM Paciente 
SELECT * FROM Paciente WHERE nombre NOT LIKE 'ober%'
SELECT * FROM Paciente WHERE apellido NOT IN('Mijangos','Mayorca','Veliz')

--Operador BETWEEN nos permite filtrar registros por un rango en especifico
SELECT * FROM Turno
SELECT * FROM Turno WHERE fechaTurno BETWEEN '20200302' AND '20200305 00:00:00'
SELECT * FROM Turno WHERE estado BETWEEN 1 AND 2	 

--COMBINANDO OPERADORES LOGICOS 
SELECT * FROM Paciente WHERE apellido ='Mijangos' AND nombre ='Liesel' OR idPaciente = 7 




