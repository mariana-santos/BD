USE bdAutoriaMusica

--Exercício 01--
CREATE VIEW vwMusicaAutor AS
	SELECT nomeAutor 'Autor', nomeMusica 'Música' FROM tbAutor
	INNER JOIN tbAutoria ON tbAutoria.idAutor = tbAutor.idAutor
	INNER JOIN tbMusica ON tbMusica.idMusica = tbAutoria.idMusica

SELECT * FROM vwMusicaAutor

--Exercício 02--
SELECT * FROM vwMusicaAutor
WHERE Autor LIKE 'Adoniran Barbosa'

