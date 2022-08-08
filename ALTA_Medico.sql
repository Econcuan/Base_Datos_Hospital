/*
select * from Medico
select * from MedicoEspecialidad
*/

EXEC 

alter proc ALTA_Medico( 
			@nombre varchar(50),
			@apellido varchar(50),
			@idEspecialidad int,
			@descripcion varchar(30)
			)

as

set nocount on

IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE nombre=@nombre and apellido=@apellido)
BEGIN 

	INSERT INTO Medico (nombre, apellido)
	VALUES (@nombre,@apellido)

	declare @auxIdmedico int
	set @auxIdmedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad (idMedico, idEspecialidad, descripcion) 
	VALUES (@auxIdmedico, @idEspecialidad,@descripcion)


	print 'El Médico se agregó correctamente'
	return
END 
ELSE
BEGIN
	print 'El Medico ya existe'
	return
END