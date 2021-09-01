CREATE DATABASE bdEncomenda
GO

USE bdEncomenda
CREATE TABLE tbCategoriaProduto(
	codCategoriaProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeCategoriaProduto VARCHAR (30) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeProduto VARCHAR (30) NOT NULL
	,precoKiloProduto SMALLMONEY NOT NULL
	,codCategoriaProduto INT FOREIGN KEY REFERENCES tbCategoriaProduto (codCategoriaProduto) NOT NULL
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (30) NOT NULL
	,dataNascimentoCliente DATE NOT NULL
	,ruaCliente VARCHAR (100)
	,numCliente INT
	,cepCliente VARCHAR (9)
	,bairroCliente VARCHAR (30)
	,cidadeCliente VARCHAR (30)
	,estadoCliente VARCHAR (30)
	,CPFCliente VARCHAR (15) NOT NULL
	,sexoCliente VARCHAR (1) CHECK (sexoCliente IN ('F', 'M', 'f', 'm'))
)

CREATE TABLE tbEncomenda(
	codEncomenda INT PRIMARY KEY IDENTITY (1,1)
	,dataEncomenda DATE NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente) NOT NULL
	,valorTotalEncomenda SMALLMONEY NOT NULL
	,dataEntregaEncomenda DATE NOT NULL
)

CREATE TABLE tbItensEncomenda(
	codItensEncomenda INT PRIMARY KEY IDENTITY (1,1)
	,codEncomenda INT FOREIGN KEY REFERENCES tbEncomenda (codEncomenda) NOT NULL
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto) NOT NULL
	,quantidadeKilos REAL NOT NULL
	,subTotal SMALLMONEY NOT NULL
)