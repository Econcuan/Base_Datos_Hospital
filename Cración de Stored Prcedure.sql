
--Crendo Stored Procedure 


CREATE PROC S_paciente (
		@idPaciente int 
)
AS

SELECT * FROM paciente where idPaciente  = @idPaciente 

GO
