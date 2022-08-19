
EXEC SELECT_TurnosPacientes 2

CREATE PROC SELECT_TurnosPacientes(
				@idpaciente paciente
				)

AS
set nocount on

/*
	select * from Turno
	select * from TurnoPaciente
	select * from Paciente
	select * from MedicoEspecialidad
	insert into MedicoEspecialidad values(1,2,'Medico Clinico')
*/

SELECT * FROM Paciente P 
INNER JOIN TurnoPaciente TP
On TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON TP.idTurno = T.idTurno 
and TP.idPaciente = P.idPaciente
INNER JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico
WHERE P.idPaciente = @idpaciente