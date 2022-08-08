/*
select * from Turno
select * from TurnoPaciente
select * from Paciente
select * from medico
*/

EXEC ALTA_Turno '20190218 09:15',2,1,'Nada'

alter proc ALTA_Turno( 
			@fecha char(14), --20190215 12:00
			@idPaciente	paciente, 
			@idMedico medico,
			@observacion observacion=''
			)

as
/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)
*/
set nocount on

IF NOT EXISTS(SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno=@fecha)
BEGIN 
	INSERT INTO Turno (fechaTurno,estado,observacion) 
	VALUES(@fecha,0,@observacion)

	declare @auxIDturno	Turno
	set @auxIDturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idTurno,idPaciente,idMedico)
	VALUES (@auxIDturno,@idPaciente,@idMedico)


	print 'El turno se agrego correctamente'
	return
END 
ELSE
BEGIN
	print 'El turno ya existe'
	return
END

