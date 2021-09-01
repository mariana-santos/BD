CREATE DATABASE bdAutoriaMusica 
GO
USE bdAutoriaMusica

CREATE TABLE tbAutor(
	idAutor INT PRIMARY KEY IDENTITY (1,1)
	,nomeAutor CHAR (30) NOT NULL
)

CREATE TABLE tbMusica(
	idMusica INT PRIMARY KEY IDENTITY(1,1)
	,nomeMusica CHAR (30) NOT NULL
	,duracaoMusica TIME
	,dataComposicao DATE
	,valorDireitoAutoral MONEY
)

CREATE TABLE tbAutoria(
	idAutoria INT PRIMARY KEY IDENTITY(1,1)
	,idAutor INT FOREIGN KEY REFERENCES tbAutor (idAutor)
	,idMusica INT FOREIGN KEY REFERENCES tbMusica (idMusica)
)
