 

select * from Paciente
select * from TurnoPaciente
select * from Turno

-- Clausula INNER JOIN
select * from Paciente P
	INNER JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente


--CLAUSULA LEFT JOIN
select * from Paciente P
	LEFT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente
*/

--CLAUSULA RIGHT JOIN
select * from Paciente P
	RIGHT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente
----------------------x-------------------------------
---Clausula UNION Y UNION ALL

--UNION LO QUE HACE OPTENER REGISTROS Y ELIMINAR REPETICIONES.
select * from Turno WHERE estado=1
union 
select * from Turno WHERE estado=2

--ELIMINANDO REPETICIONES
select * from Turno 
union 
select * from Turno 

--UNION ALL LO QUE HACE ES DEVOLVER TODO AUNQUE HAYAN REPETICIONES SIN ELIMINAR. 
select * from Turno WHERE estado=1
UNION ALL
select * from Turno WHERE estado=2

--SIN ELIMINAR REPETICIONES
select * from Turno 
UNION ALL
select * from Turno 