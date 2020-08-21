USE ProjetoNyous;

INSERT INTO Acesso (Tipo) VALUES 

	('Administrador'), 
	('Padrao')


INSERT INTO Categoria (Titulo) VALUES 

	('Meetup'), 
	('Workshop'),
	('Hackathon'),
	('Live'),
	('Palestra');


INSERT INTO Localizacao (Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP) VALUES 

	('Alameda Barão de Limeira', 539, NULL, 'Santa Cecilia', 'SÃo Paulo', 'SP', '01202-001'); 
	



INSERT INTO Usuario (Nome, Email, Senha, DataNascimento, IdAcesso) VALUES 

	('Diego Willian Silva', 'Diego@gmail.com', '123456789', '2004-02-21T09:35:00', 1); 



INSERT INTO Evento (DataEvento, Capacidade, AcessoRestrito, IdCategoria, IdLocalizacao) VALUES 

	('2020-10-15T22:00:00', 100, 0, 3, 1); 