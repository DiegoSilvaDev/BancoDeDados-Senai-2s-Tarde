/* DQL - Data Query Language */

-- Selecionar todos os dados da tabela
SELECT * FROM Pet;

-- Selcionar um dado espec�fico
SELECT * FROM Pet WHERE 
	IdPet = 1 OR -- ||
	IdPet = 3;

-- Selecionar como uma BUSCA espec�ficas
-- % qualquer coisa
SELECT * FROM Pet WHERE 
	Nome LIKE '%o%' AND -- &&
	Idade LIKE '2';

-- Selecionar dados com algumas condi��es especiais
SELECT * FROM Pet WHERE IdPet > 1 AND IdPet < 5;

-- Ordenar dados de forma crescente (padr�o)
SELECT * FROM Pet ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Pet ORDER BY Idade ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Pet ORDER BY Idade DESC;

-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Pet WHERE
	IdDono BETWEEN '1' AND '4'
