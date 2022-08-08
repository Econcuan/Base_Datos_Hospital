
--SELECT * FROM Paciente



--exec ALTA_PACIENTE '362615465','Carlos','Lopez','20190515','Calle 3','PER','','Wilmer.gomez1997@gmail.com',''

ALTER PROC ALTA_PACIENTE(
		  @dpi varchar(20),
		  @nombre varchar(50),
		  @apellido varchar(50),
		  @fNacimiento varchar(8),
		  @domicilio varchar(50),
		  @idPais char(3),
		  @telefono varchar(20),
		  @email varchar(30)='',
		  @observacion observacion
		  )
as

IF NOT EXISTS (SELECT * FROM Paciente where dpi=@dpi)
BEGIN
	INSERT INTO Paciente (dpi, nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
	VALUES (@dpi,@nombre,@apellido,@fNacimiento,@domicilio,@idPais,@telefono,@email,@observacion)
	PRINT 'El paciente se agrego correctamente'
	Return
END 
ELSE
BEGIN
	PRINT 'El paciente ya existe'
	RETURN
END