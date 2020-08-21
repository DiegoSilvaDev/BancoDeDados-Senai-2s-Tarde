/* DQL - JOINS*/

USE ClinicaVeterinaria;

SELECT 
	Dono.Nome,
	Raca.Nome,
	Pet.Nome,
	Pet.Idade
FROM Pet
	RIGHT JOIN Dono ON Pet.IdDono = Dono.IdDono
	RIGHT JOIN Raca ON Pet.IdRaca = Raca.IdRaca
WHERE Raca.Nome IS NOT NULL;
;

SELECT 
	Dono.Nome,
	Raca.Nome,
	Pet.Nome,
	Pet.Idade
FROM Pet
	LEFT JOIN Dono ON Pet.IdDono = Dono.IdDono
	LEFT JOIN Raca ON Pet.IdRaca = Raca.IdRaca
WHERE Raca.Nome IS NULL AND Dono.Nome IS NULL;
;

SELECT 
	Dono.Nome,
	Raca.Nome,
	Pet.Nome,
	Pet.Idade
FROM Pet
	INNER JOIN Dono ON Pet.IdDono = Dono.IdDono
	INNER JOIN Raca ON Pet.IdRaca = Raca.IdRaca
WHERE Dono.Nome IS NULL;
;