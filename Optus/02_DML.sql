/* DML - DATA MANIPULATION LANGUAGE */

--INSERT - Inserir

INSERT INTO Artistas( Nome, IdEstilo) 
VALUES ('Banda Kiss', 4);

INSERT INTO Artistas ( Nome, IdEstilo) 
VALUES ('Nirvana', 4);

INSERT INTO Artistas ( Nome, IdEstilo) 
VALUES ('Tim Maia', 12);

INSERT INTO Artistas ( Nome, IdEstilo) 
VALUES ('Luiz Gonzaga', 11)



--UPDATE - Alterar

UPDATE Estilo SET 
	Nome = 'Funk'
WHERE IdEstilo = 1;

--DELETE - Excluir
DELETE FROM Estilo WHERE IdEstilo = 2;

/* DQL - SELECT */

SELECT * FROM Estilo;


