USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 21/07/2022 22:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Crendo Stored Procedure 


ALTER PROC [dbo].[S_paciente] (
		@idPaciente int 
)
AS

SELECT * FROM paciente where idPaciente  = @idPaciente 

SET ANSI_NULLS OFF

SELECT apellido, nombre, idPais, observacion FROM paciente where idPaciente = @idPaciente

