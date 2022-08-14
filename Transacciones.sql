
--select * from Paciente


BEGIN TRAN 
	UPDATE Paciente SET telefono=444 where apellido='Lopez'
IF @@ROWCOUNT = 1
   COMMIT TRAN 
ELSE
	ROLLBACK TRAN



select * from Turno

BEGIN TRAN
	DELETE from Turno where estado = 1
IF @@ROWCOUNT = 1
	COMMIT TRAN
ELSE
	ROLLBACK TRAN

