
--SELECT * from Especialidad

EXEC ALTA_Especialidad 'DERMATOLOGIA'

ALTER PROC ALTA_Especialidad(
		  @especialidad varchar(30)
		  )
as

set nocount on

IF NOT EXISTS (SELECT TOP 1 idEspecialidad from Especialidad WHERE especialidad=@especialidad)
BEGIN
	INSERT INTO especialidad (especialidad)
	VALUES (@especialidad)
	PRINT 'La especialidad se agregó correctamente'
	Return
END 
ELSE
BEGIN
	PRINT 'La especialidad ya existe'
	RETURN
END