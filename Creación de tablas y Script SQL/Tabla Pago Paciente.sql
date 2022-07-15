

CREATE TABLE PagoPaciente(
	idpago int NOT NULL,
	idpaciente int NOT NULL,
	idturno int NOT NULL,

	PRIMARY KEY (idpago, idpaciente, idturno)


)