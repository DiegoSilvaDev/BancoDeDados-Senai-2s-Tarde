/* Criando o banco de dados Optus */
CREATE DATABASE Optus;
GO

/* Utilizado para deixar o uso do banco mas efetivo */
USE Optus;
GO
/* Criando a tabela Estilo */
CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL
);
GO

/* Criando a tabela Artistas */
CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,

	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEStilo)
);
GO
 
/* Criando a tabela Album */
CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataLancamento DATETIME NOT NULL,
	Localizacao VARCHAR(200) NOT NULL,
	QTDMinutos INT NOT NULL,
	Ativo BIT NOT NULL,

	IdArtista INT FOREIGN KEY REFERENCES Artistas(IdArtista)
);
GO
/*Criando a tabela EstiloAlbum */
CREATE TABLE EstiloAlbum(
	IdEstiloAlbum INT PRIMARY KEY IDENTITY NOT NULL,

	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);
GO
/*Criando a tabela Usuarios */
CREATE TABLE Usuarios(
	IdUser INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100),
	Permissao BIT NOT NULL,
	Senha INT,
	Email CHAR(50)
);

/* Teste do BIT para substituição do Boolean*/
/*INSERT INTO Album VALUES*/
/* 'Nome album'/1 para simular True estilo Boolean e 0 para false */
	/*('Thriller',1),
	('Abbey Road',1),
	('Nevermind',0);*/

/*SELECT Nome
FROM Album
WHERE Ativo = 1;*/