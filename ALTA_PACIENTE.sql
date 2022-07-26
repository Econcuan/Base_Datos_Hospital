
select * from Paciente

exec ALTA_Paciente '36261585','Wilmer','Gomez','20180518','Calle 1','PER','','Wilmer.gomez1997@gmail.com',''

alter proc ALTA_Paciente(
		  @dpi varchar(20),
		  @nombre varchar(50),
		  @apellido varchar(50),
		  @fNacimiento varchar(8),
		  @domicilio varchar(50),
		  @idPais char(3),
		  @telefono varchar(20),
		  @email varchar(30)='',
		  @observacion varchar(1000)=''
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