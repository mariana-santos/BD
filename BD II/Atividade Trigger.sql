USE bdEstoque 
GO

CREATE TABLE tbEntradaProduto(
codEntrada INT PRIMARY KEY IDENTITY (1,1)
,dataEntradaProduto DATE NOT NULL
,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
,quantidadeEntradaProduto INT NOT NULL
)

CREATE TABLE tbSaidaProduto(
codSaidaProduto INT PRIMARY KEY IDENTITY (1,1)
,dataSaidaProduto DATE NOT NULL
,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
,quantidadeSaidaProduto INT NOT NULL
)

--Exercício 01
CREATE TRIGGER tgAtualizaQuantidade ON tbItensVenda AFTER INSERT
AS
	BEGIN
		DECLARE @codProd INT, @qtd INT
		SET @codProd = (SELECT codProduto FROM INSERTED)
		SET @qtd = (SELECT quantidadeItensVenda FROM INSERTED)

		UPDATE tbProduto
		SET quantidadeProduto = quantidadeProduto - @qtd
		WHERE codProduto = @codProd
	END

--Exercício 02
CREATE TRIGGER tgEntradaProduto ON tbEntradaProduto AFTER INSERT
AS
	BEGIN
		DECLARE @qtdProd INT, @codProd INT
		SET @codProd = (SELECT codProduto FROM INSERTED)
		SET @qtdProd = (SELECT quantidadeEntradaProduto FROM INSERTED)

		UPDATE tbProduto
		SET quantidadeProduto = quantidadeProduto + @qtdProd
		WHERE codProduto = @codProd
	END

--Exercício 03
CREATE TRIGGER tgSaidaProduto ON tbItensVenda AFTER INSERT
AS
	BEGIN
		DECLARE @codProd INT, @qtdItens INT
		SET @codProd = (SELECT codProduto FROM INSERTED)
		SET @qtdItens = (SELECT quantidadeItensVenda FROM INSERTED)

		INSERT INTO tbSaidaProduto (codProduto, quantidadeSaidaProduto, dataSaidaProduto)
		VALUES(@codProd, @qtdItens, GETDATE())

		UPDATE tbProduto
		SET quantidadeProduto = quantidadeProduto - @qtdItens
		WHERE codProduto = @codProd
	END