
/* Criando o banco de dados*/
CREATE DATABASE ClinicaVeterinaria;
GO
/* Fazendo com que seja usado efetivamente */
USE ClinicaVeterinaria;
GO

/* Criando a tabela Clinica */
CREATE TABLE Clinica(
	IdClinica INT PRIMARY KEY IDENTITY NOT NULL,
	Nome Char(50) NOT NULL,
	Endereco VARCHAR(100) NOT NULL
);
GO

/* Criando a tabela Veterinarios */
CREATE TABLE Veterinarios(
	IdVet INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT,
	
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);
GO

/* Criando a tabela TiposPets */
CREATE TABLE TiposPets(
	IdTipo INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
);
GO

/* Criando a tabela Raça/Raca */
CREATE TABLE Raca(
	IdRaca INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT,

	IdTipo INT FOREIGN KEY REFERENCES TiposPets(IdTipo)
);
GO

/* Criando a tabela Dono */
CREATE TABLE Dono(
	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT
);
GO

/* Criando a tabela Pet */
CREATE TABLE Pet(
	IdPet INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Idade INT,

	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca)
);
GO

/* Criando a tabela Atendimentos */
CREATE TABLE Atendimentos(
	IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao CHAR(200) NOT NULL,
	DataAtendimento DATETIME,

	IdVeterinarios INT FOREIGN KEY REFERENCES Veterinarios(IdVet),
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet)

);

