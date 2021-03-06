USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 21/07/2022 22:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER PROC [dbo].[S_paciente] (
		@idPaciente int 
)
AS

SELECT apellido,nombre,idPais,observacion,
	(SELECT ps.pais FROM pais ps WHERE ps.idPais = pa.idPais) descPais
FROM paciente pa WHERE idPaciente = @idPaciente

/*

--Crendo Stored Procedure 

--Declarando variable
DECLARE @ordenamiento CHAR(1) 
DECLARE @valorOrdenamiento CHAR(1)
SET @valorOrdenamiento = ISNULL(@ordenamiento, 'A')
Print @valorOrdenamiento

select * from pais
select * from pais 
*/