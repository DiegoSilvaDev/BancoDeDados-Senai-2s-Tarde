/* DML - Data Manipulation Language */
-- INSERT - Inserir

USE ClinicaVeterinaria;
INSERT INTO TiposPets ( Descricao )
	VALUES ('Gato');
INSERT INTO Raca ( Nome, Idade, IdTipo )
	VALUES ('Siamês', 1, 8);
INSERT INTO Raca ( Nome, Idade, IdTipo )
	VALUES ('Papagaio-Galego', 1, 7);
INSERT INTO Raca ( Nome, Idade, IdTipo )
	VALUES ('Husky Siberiano', 3, 6);
INSERT INTO Dono ( Nome, Idade) 
	VALUES ('Carlos', 27);
INSERT INTO Pet ( Nome, Idade, IdDono, IdRaca) 
	VALUES ('Bolota', 1, 1, 13);
INSERT INTO Pet ( Nome, IdDono, IdRaca) 
	VALUES ('Loro', 1, 2, 14);
INSERT INTO Pet ( Nome, Idade, IdDono) 
	VALUES ('Loro José', 1, 1);
INSERT INTO Pet ( Nome, Idade, IdRaca) 
	VALUES ('Apolo', 1, 18);

-- UPDATE - Alterar
UPDATE Pet SET
	Nome = 'Jorge',
	Idade = 2,
	IdDono = 4,
	IdRaca = 3
WHERE IdPet = 5;

-- DELETE - Excluir
DELETE FROM Dono WHERE IdDono = 5;


SELECT * FROM Raca;
SELECT * FROM TiposPets;
SELECT * FROM Pet;
SELECT * FROM Dono;