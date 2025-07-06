-- Buscar o nome e o ano dos filmes --
select nome, ano from filmes;

-- buscar o nome e ano dos filmes, ordenados pro oredem crescente pelo ano --
select nome, ano from filmes order by ano ASC;

-- buscar pelo filme de volta para o futuro, trazendo o nome, ano e duração --
select * from filmes where nome = 'De Volta para o Futuro';

-- buscar os filmes lançados em 1997 --
select * from filmes where ano = 1997;

-- bsucar filmes lançados depois do ano 2000 --
select * from filmes where ano > 2000;

-- bsucar os filmes com duração maior que 100 e menor que 150, ordenado
-- pela duração em ordem crescente --
select * from filmes where duracao between 101 and 150 order by duracao ASC;

--bucar a quantidade de filmes lançados no ano, agrupando por ano, 
-- ordenado pela duraçao em ordem descrescente --
select ano, count(*) as quantidade from filmes 
group by ano
order by sum(duracao) DESC;

-- buscar os atores do genero maculino retornando o PrimeiroNome e UltimoNome --
select primeironome, ultimonome from atores where genero = 'M';

-- buscar os atores do genero fem, retornando o primeiroNome, ultimoNome e 
-- ordenando pelo primeniroNome
select primeironome, ultimonome from atores where genero = 'F'
order by primeironome;

-- buscar o nome do filme e o genero --
select a.nome, b.genero from filmes a, generos b, filmesgenero c
where b.id = c.idgenero
and a.id = c.idfilme;

-- buscar o nome do filme e do genero do tipo mesterio --
select a.nome, b.genero from filmes a, generos b, filmesgenero c
where b.id = c.idgenero
and a.id = c.idfilme
and genero = 'Mistério';

-- Buscar o nome do filme e os atores, 
-- trazendo o PrimeiroNome, UltimoNome e seu Papel --
select n.nome, a.primeironome, a.ultimonome, b.papel 
from filmes n, atores a, elencofilme b 
where a.id = b.idator
and n.id = b.idfilme;

