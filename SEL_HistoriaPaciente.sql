
EXEC SEL_HistoriaPaciente 7

ALTER PROC SEL_HistoriaPaciente (
			@idPaciente Paciente)

AS
set nocount on

/*
select * from Paciente
select * from historia
select * from HistoriaPaciente
insert into Historia values(1,'20190215','Se le encontró muy bien')
insert into HistoriaPaciente values(1,7,2)

*/


Select * from Paciente P
INNER JOIN HistoriaPaciente HP
ON HP.idPaciente = P.idPaciente
INNER JOIN Historia H
ON H.idHistoria = HP.idHistoria
INNER JOIN MedicoEspecialidad ME
ON ME.idMedico = HP.idMedico
INNER JOIN Medico M
ON M.idMedico = ME.idMedico
WHERE P.idPaciente = @idPaciente





