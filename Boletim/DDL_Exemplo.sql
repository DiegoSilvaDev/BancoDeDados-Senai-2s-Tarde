/*
	DDL -  Data Definition Language
*/

-- Criar Banco

CREATE DATABASE boletim;
GO
-- Usar efetivamente o banco
USE boletim;
GO
-- Apagamos uma base de dados
-- DROP DATABASE boletim;

/* Criamos a tabela Aluno 
	IDENTITY - Gera os ids automaticamente, incrementando-os
	NOT NULL - Não deixa inserir nenhum dado se não houver ids
*/

CREATE TABLE Aluno(
	IdAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);
GO
-- Apagamos uma tabela caso necessário
-- DROP TABLE Aluno;

/* Criamos a tabela Materia */
 
 CREATE TABLE Materia (
	IDMATERIA INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50)
 );
 GO
 CREATE TABLE Trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	-- Colocamos as chaves estrangeiras (FK)
	IdMateria INT FOREIGN KEY REFERENCES Materia (IdMateria),
	IdAluno	  INT FOREIGN KEY REFERENCES Aluno (IdAluno)
 );
 GO
 -- Apagamos uma tabela caso necessário
 -- DROP TABLE Aluno;
 -- DROP TABLE Materia;
 -- DROP TABLE Trabalho;

 -- Alterar a estrutura da tabela Trabalho, incluindo uma coluna nova

 ALTER TABLE Trabalho ADD DataEntrega DATETIME;

 -- Alteramos e excluímos uma coluna de teste
 -- ALTER TABLE Trabalho ADD Teste INT;
 -- ALTER TABLE TRABALHO DROP COLUMN Teste;