--Estructuras de control para evuluar bloques de codiogo y tomar decisiones 

/*
IF 
BEGIN END
EXISTS
WHILE 
RETURN
BREAK 
TRY CATCH 
*/

/*
Funcion EXIST Permite evaluar si existe un grupo de registros de determinada consulta 
*/


declare @idPaciente int 
declare @idturno int 

set @idPaciente = 7

IF @idPaciente = 7
BEGIN
	set @idturno = 20
	select * from Paciente where idPaciente = @idPaciente
	print @idturno

	IF EXISTS (SELECT * FROM Paciente where idPaciente=2)
	print 'existe'
	END 	
	ELSE
	BEGIN

	PRINT 'No se comple la condicional'

END


declare @contador int=0

	WHILE @contador <= 10	
BEGIN
	PRINT @contador
	SET	@contador = @contador + 1
END	


