
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

declare @valor int 
declare @resultado char(10)=''
set @valor = 100

set @resultado = (CASE WHEN @valor = 10 then 'ROJO'
						WHEN @valor = 20 then 'Verde'
						WHEN @valor =30 then 'Azul'
					ELSE 'GRIS'
					END )
print @resultado 


select *, (CASE WHEN estado = 1 THEN 'VERDE'
				WHEN estado = 2 THEN 'ROJO'
				WHEN estado = 3 THEN 'AZUL' 
			else 'GRIS'
			END) as colorTurno from turno

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

--USANDO BEGIN

	declare @contador int=0

			WHILE @contador <= 10	
		BEGIN
			PRINT @contador
			SET	@contador = @contador + 1
		END	

--uso del RETURN
		declare @contador int=0

		WHILE @contador <= 10	
		BEGIN
			PRINT @contador
			SET	@contador = @contador + 1
			if @contador = 3
		RETURN 
	PRINT 'HOLA	'
END

-- CICLO WHILE

declare @contador int=0
		WHILE @contador <= 10	
	BEGIN
		PRINT @contador
		SET	@contador = @contador + 1
		if @contador = 3
		BREAK 
	END

PRINT 'SIGUE EJECUTANDO'

--TRY CATHC 
BEGIN TRY	
	set @contador = 'texto'
END TRY

	BEGIN CATCH
		PRINT 'NO ES POSIBLE ASIGNAR UN TEXTO A LA VARABLE CONTADOR'
	END CATCH 
