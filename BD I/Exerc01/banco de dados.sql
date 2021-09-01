CREATE DATABASE Exerc01
GO
USE Exerc01

CREATE TABLE tbFunc(
codFunc INT PRIMARY KEY IDENTITY (1,1)
,nomeFunc VARCHAR (30)
,ufFunc VARCHAR (2)
,idadeFunc INT
,qtdFilhosFunc INT
)

CREATE TABLE tbFuncional(
codFuncional INT PRIMARY KEY IDENTITY (1,1)
,cargoFuncional VARCHAR (15)
,salarioFuncional SMALLMONEY
,tempoEmpresaFuncional FLOAT
,tempoCargoFuncional FLOAT
,sindicalizadoFuncional VARCHAR (1) --booleano--
,codFunc INT FOREIGN KEY REFERENCES tbFunc (codFunc)
)
