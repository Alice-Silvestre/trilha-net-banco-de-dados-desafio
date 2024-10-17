-- 01 Buscar o nome e ano dos filmes
SELECT 
	Nome, 
	Ano 
FROM Filmes

-- 02 Buscar o nome e ano dos filmes, ordenador por ordem crescente pelo ano
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

-- 03 Buscar pelo filme de volta para o futuro, trazendo nome, ano e duração
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Nome = 'De Volta para o Futuro'

-- 04 Buscar filmes lançados em 1997
SELECT * 
FROM Filmes
WHERE Ano = 1997

-- 05 Buscar filmes lançados após o ano 2000
SELECT * 
FROM Filmes
WHERE Ano > 2000

-- 06 Buscar filmes com duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao 

-- 07 Buscar a quantidade de filmes lançados no ano, agrupado por ano, ordenado pela duração em ordem decrescente
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes
Group By Ano
Order By Quantidade DESC

-- 08 Buscar os atores de genero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 09 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	PrimeiroNome, 
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o genero
SELECT 
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN ElencoFilme On Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores On Atores.Id = ElencoFilme.IdAtor
