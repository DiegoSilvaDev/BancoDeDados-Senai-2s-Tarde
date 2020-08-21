/* DQL - Data Query Language */

-- Selecionar todos os dados da tabela
SELECT * FROM Estilo WHERE
	IdEstilo = 1 OR -- ||
	IdEstilo = 3;

-- Selecionar como uma BUSCA espec�fica
-- % = Qualquer coisa
SELECT * FROM Estilo WHERE
	Nome LIKE '%k' AND -- &&
	IdEstilo LIKE '%';

-- Selecionar dados espec�ficos, com algumas condi��es especiais
SELECT * FROM Estilo WHERE IdEstilo > 3 AND IdEstilo < 8;

-- Ordenar dados de forma crescente (padr�o)
SELECT * FROM Estilo ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Estilo ORDER BY Nome ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Estilo ORDER BY IdEstilo DESC;

-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Estilo WHERE IdEstilo BETWEEN '1' AND '4';


