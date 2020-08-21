/* DQL - JOINS*/

USE Optus;

SELECT
	Estilo.Nome,
	Artistas.Nome
FROM Artistas 
	RiGHT JOIN Estilo ON Artistas.IdEstilo = Estilo.IdEstilo
WHERE Artistas.Nome IS NULL;
;

SELECT 
	Estilo.Nome,
	Artistas.Nome
FROM Artistas
	LEFT JOIN Estilo ON Artistas.IdEstilo = Estilo.IdEstilo
WHERE Estilo.Nome IS NOT NULL;
;

SELECT
	Estilo.Nome,
	Artistas.Nome
FROM Artistas
	INNER JOIN Estilo ON Artistas.IdEstilo = Estilo.IdEstilo
;