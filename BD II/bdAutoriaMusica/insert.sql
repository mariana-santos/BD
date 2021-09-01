USE bdAutoriaMusica

INSERT INTO tbAutor(nomeAutor)
VALUES
	('David Bowie')
	,('Freddie Mercury')
	,('Alex Turner')
SELECT * FROM tbAutor

INSERT INTO tbMusica(nomeMusica, valorDireitoAutoral)
VALUES
	('Heroes', 700000)
	,('Bohemian Rhapsody', 100000000)
	,('Stuck on the puzzle', 200000)
SELECT nomeMusica, valorDireitoAutoral FROM tbMusica

INSERT INTO tbAutoria(idAutor, idMusica)
VALUES
	(1, 1)
	,(2, 2)
	,(3, 3)
SELECT * FROM tbAutoria

INSERT INTO tbAutor(nomeAutor)
VALUES
	('Adoniran Barbosa')
SELECT * FROM tbAutor

INSERT INTO tbMusica(nomeMusica, valorDireitoAutoral)
VALUES
	('Trem das onze', 100000)
SELECT nomeMusica, valorDireitoAutoral FROM tbMusica

INSERT INTO tbAutoria(idAutor, idMusica)
VALUES
	(4, 4)
SELECT * FROM tbAutoria