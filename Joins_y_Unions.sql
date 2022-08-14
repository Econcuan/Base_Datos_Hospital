

select * from Paciente
select * from TurnoPaciente

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
