-- 1
SELECT Nome, Ano
FROM Filmes;

-- 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = "De Volta para o Futuro"

-- 4
SELECT *
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT *
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT 
	Ano,
	COUNT(*) AS QuantidadeFilmes,
	SUM(Duracao) AS DuracaoTotal
from Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;

-- 11
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE LOWER(G.Genero) = 'mistério';

-- 12
SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id;