USE bdAutoriaMusica

--Exerc�cio 01--
CREATE VIEW vwMusicaAutor AS
	SELECT nomeAutor 'Autor', nomeMusica 'M�sica' FROM tbAutor
	INNER JOIN tbAutoria ON tbAutoria.idAutor = tbAutor.idAutor
	INNER JOIN tbMusica ON tbMusica.idMusica = tbAutoria.idMusica

SELECT * FROM vwMusicaAutor

--Exerc�cio 02--
SELECT * FROM vwMusicaAutor
WHERE Autor LIKE 'Adoniran Barbosa'

