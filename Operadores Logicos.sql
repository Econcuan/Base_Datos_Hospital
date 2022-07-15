

--OPERADOR AND
SELECT * FROM Paciente
INSERT INTO Paciente (nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion) 
Values('Liesel','Mijangos','2017-04-04','Marianita','ESP','','','')
SELECT * FROM Paciente WHERE apellido ='Mijangos' and nombre ='Liesel' and idPaciente = 7

--OPERADOR OR 
SELECT * FROM Paciente WHERE apellido ='Mijangos' OR nombre ='Liesel' OR idPaciente = 6