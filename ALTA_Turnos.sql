
/*
select * from Turno
select * from paciente
select * from TurnoPaciente
select * from medico
insert into medico values('Pablo','Ramirez')
*/

EXEC ALTA_Turno '20190215 08:15',2,7,'El paciente tiene que estar en Ayunas'


ALTER PROC ALTA_Turno(
		@fecha char(14), --20190215 12:00
		@idPaciente paciente,
		@idmedico medico,
		@observacion observacion=''
		  )
as

/*
	ESTADO = 0 (pendiente)
	ESTADO = 1 (realizado)
	ESTADO = 2 (cancelado)
*/


IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno where fechaTurno = @fecha)
BEGIN
	INSERT INTO Turno(fechaTurno, estado, observacion)
	VALUES (@fecha,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
	VALUES (@auxIdturno,@idPaciente,@idmedico)

	PRINT 'El turno se agrego correctamente'
	Return
END 
ELSE
BEGIN
	PRINT 'El turno ya existe'
	RETURN
END