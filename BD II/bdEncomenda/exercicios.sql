USE bdEncomenda
GO

--Exercício A
CREATE PROCEDURE spInsereCategoria @categoria VARCHAR (30) 
AS 
	BEGIN 
		IF EXISTS (SELECT codCategoriaProduto FROM tbCategoriaProduto WHERE nomeCategoriaProduto LIKE @categoria)
		BEGIN 
			PRINT ('Categoria já cadastrada anteriormente. Tente novamente') 
		END 
		ELSE 
			BEGIN 
				INSERT INTO tbCategoriaProduto (nomeCategoriaProduto)
				VALUES (@categoria) 
				PRINT ('Categoria '+@categoria+' cadastrada com sucesso.')
			END 
	END

EXEC spInsereCategoria 'Bolo Festa'
EXEC spInsereCategoria 'Bolo Simples'
EXEC spInsereCategoria 'Torta'
EXEC spInsereCategoria 'Salgado'

--Exercício B
CREATE PROCEDURE spInsereProduto @nome VARCHAR (30), @preco SMALLMONEY, @categoria INT
AS
	BEGIN
		IF EXISTS (SELECT codProduto FROM tbProduto WHERE nomeProduto LIKE @nome)
		BEGIN
			PRINT ('Produto já cadastrado anteriormente. Tente novamente')
		END
		ELSE IF EXISTS (SELECT codCategoriaProduto FROM tbCategoriaProduto WHERE codCategoriaProduto = @categoria)
		BEGIN
			INSERT INTO tbProduto (nomeProduto, precoKiloProduto, codCategoriaProduto)
			VALUES (@nome, @preco, @categoria)
			PRINT (@nome+' cadastrado com sucesso!')
		END
		ELSE
		BEGIN
			PRINT('Categoria inválida. Tente novamente')
		END
	END

EXEC spInsereProduto 'Bolo Floresta Negra', 42, 1
EXEC spInsereProduto 'Bolo Prestígio', 43, 1
EXEC spInsereProduto 'Bolo Nutella', 44, 1
EXEC spInsereProduto 'Bolo Formigueiro', 17, 2
EXEC spInsereProduto 'Bolo de Cenoura', 19, 2
EXEC spInsereProduto 'Torta de Palmito', 45, 3
EXEC spInsereProduto 'Torta de Frango e Catupiry', 47, 3
EXEC spInsereProduto 'Torta de Escarola', 44, 3
EXEC spInsereProduto 'Coxinha de Frango', 25, 4
EXEC spInsereProduto 'Esfirra de Carne', 27, 4
EXEC spInsereProduto 'Folhado Queijo', 31, 4
EXEC spInsereProduto 'Risole Misto', 29, 4


--Exercício C
CREATE PROCEDURE spInsereCliente
@nome VARCHAR (30), @nascimento DATE, @cpf VARCHAR (15), @sexo VARCHAR (1)
,@rua VARCHAR (100), @num INT, @cep VARCHAR (9), @bairro VARCHAR (30), @city VARCHAR (30), @estado VARCHAR (30)
AS
	BEGIN
		IF EXISTS (SELECT codCliente FROM tbCliente WHERE CPFCliente like @cpf)
		BEGIN
			PRINT('Impossível cadastrar.'+' CPF '+@cpf+' já cadastrado.')
			SELECT cpfCliente FROM tbCliente
		END
		ELSE IF (@bairro LIKE 'Guaianases' OR @bairro LIKE 'Itaquera')
		BEGIN
			INSERT INTO tbCliente(nomeCliente, dataNascimentoCliente, CPFCliente, sexoCliente, ruaCliente, numCliente, cepCliente, bairroCliente, cidadeCliente, estadoCliente)
			VALUES (@nome, @nascimento, @cpf, @sexo, @rua, @num, @cep, @bairro, @city, @estado)
			PRINT('Cliente '+@nome+' cadastrado com sucesso.')
		END
		ELSE
		BEGIN
			PRINT('Não foi possível cadastrar o cliente '+@nome+', pois o bairro '+@bairro+' não é atendido pela confeitaria')
		END
	END

EXEC spInsereCliente 'Samira Falah', '05/05/1990', '123.456.789-01', 'F', 'Rua Aguapei', 1000, '8090000', 'Guaianases', 'São Paulo', 'SP'
EXEC spInsereCliente 'Celia Nogueira', '06/06/1992', '234.567.890-12', 'F', 'Rua Andes', 234, '8456090', 'Guaianases', 'São Paulo', 'SP'
EXEC spInsereCliente 'Paulo Cesar Siqueira', '04/04/1984', '345.678.901-23', 'M', 'Rua Castelo do Piaui', 232, '8109000', 'Itaquera', 'São Paulo', 'SP'
EXEC spInsereCliente 'Rodrigo Favaroni', '09/04/1991', '456.789.012-34', 'M', 'Rua Sansão Castelo Branco', 10, '8431090', 'Guaianases', 'São Paulo', 'SP'
EXEC spInsereCliente 'Flávia Regina Brito', '22/04/1992', '567.890.123-45', 'F', 'Rua Mariano Moro', 300, '8200123', 'Itaquera', 'São Paulo', 'SP'

--Exercício D
CREATE PROCEDURE spInsereEncomenda @data DATE, @codCliente INT, @valor SMALLMONEY, @dataentrega DATE, @cpf VARCHAR (15)
AS
	BEGIN
		IF EXISTS (SELECT codCliente FROM tbCliente WHERE CPFCliente like @cpf)
		BEGIN
			DECLARE @dataAtual DATETIME
			SET @dataAtual = GETDATE();
			DECLARE @diferenca INT
			SET @diferenca = (SELECT DATEDIFF(DAY, @dataAtual, @data))

			IF (@diferenca < 0)
			BEGIN
				PRINT ('Não é possível efetuar uma encomenda numa data anterior à data atual')
			END
			ELSE
			BEGIN
				INSERT INTO tbEncomenda(dataEncomenda, codCliente, valorTotalEncomenda, dataEntregaEncomenda)
				VALUES (@data, @codCliente, @valor, @dataEntrega)

				DECLARE @nomeCliente VARCHAR (30), @codEncomenda INT
				SET @nomeCliente = (SELECT nomeCliente FROM tbCliente WHERE codCliente = @codCliente)
				SET @codEncomenda = (SELECT MAX(codEncomenda) FROM tbEncomenda)

				PRINT('Encomenda '+convert(varchar(6), @codEncomenda)+' para o cliente '+@nomeCliente+' entregue com sucesso.')
			END
		END
		ELSE
		BEGIN
			PRINT ('Não foi possível efetuar a encomenda pois o cliente de CPF '+@cpf+' não foi cadastrado.')
		END
	END


EXEC spInsereEncomenda '08/08/2021', 1, 450, '15/08/2021', '123.456.789-01'
EXEC spInsereEncomenda '10/10/2021', 2, 200, '15/10/2021', '234.567.890-12'
EXEC spInsereEncomenda '10/10/2021', 3, 150, '10/12/2021', '345.678.901-23'
EXEC spInsereEncomenda '06/10/2021', 1, 250, '12/10/2021', '123.456.789-01'
EXEC spInsereEncomenda '05/10/2021', 4, 150, '12/10/2021', '456.789.012-34'

--Exercício E
CREATE PROCEDURE spInsereItensEncomenda @codEnc INT, @codProd INT, @kg REAL, @subtotal SMALLMONEY
AS
	BEGIN
		IF NOT EXISTS (SELECT codEncomenda FROM tbEncomenda WHERE codEncomenda = @codEnc)
		BEGIN
			PRINT('Código de encomenda '+@codEnc+' não existe.')
		END
		ELSE IF NOT EXISTS (SELECT codProduto FROM tbProduto WHERE codProduto = @codProd)
		BEGIN
			PRINT('Código de produto '+@codProd+' não existe.')
		END
		ELSE
		BEGIN
			INSERT INTO tbItensEncomenda (codEncomenda, codProduto, quantidadeKilos, subTotal)
			VALUES(@codEnc, @codProd, @kg, @subtotal)

			DECLARE @codItem INT
			SET @codItem = (SELECT MAX(codItensEncomenda) FROM tbItensEncomenda)
			PRINT('Item adicionado na encomenda. Cód: '+CONVERT(VARCHAR(6), @codItem))
		END
	END

EXEC spInsereItensEncomenda 1, 1, 2.5, 105
EXEC spInsereItensEncomenda 1, 10, 2.6, 70
EXEC spInsereItensEncomenda 1, 9, 6, 150
EXEC spInsereItensEncomenda 1, 12, 4.3, 125
EXEC spInsereItensEncomenda 2, 9, 8, 200
EXEC spInsereItensEncomenda 3, 11, 3.2, 100
EXEC spInsereItensEncomenda 3, 9, 2, 50
EXEC spInsereItensEncomenda 4, 2, 3.5, 150
EXEC spInsereItensEncomenda 4, 3, 2.2, 100
EXEC spInsereItensEncomenda 5, 6, 3.4, 150

--Exercício F
CREATE PROCEDURE spAlteraPreco
AS
	BEGIN
		--1
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto + (precoKiloProduto * 0.1)
		WHERE codCategoriaProduto = 1

		--2
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto - (precoKiloProduto * 0.2)
		WHERE codCategoriaProduto = 2

		--3
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto + (precoKiloProduto * 0.25)
		WHERE codCategoriaProduto = 3

		--4
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto + (precoKiloProduto * 0.2)
		WHERE codCategoriaProduto = 4 AND nomeProduto NOT LIKE 'Esfirra de Carne'
	END

EXEC spAlteraPreco

--Exercício G
CREATE PROCEDURE spExcluiCliente @cpf VARCHAR (15)
AS
	BEGIN
		IF NOT EXISTS (SELECT codCliente FROM tbCliente WHERE CPFCliente LIKE @cpf)
		BEGIN
			PRINT('CPF '+@CPF+' não encontrado.')
		END
		ELSE
		BEGIN
			DECLARE @codCli INT, @nomeCli VARCHAR (30)
			SET @codCli = (SELECT codCliente FROM tbCliente WHERE CPFCliente LIKE @cpf)
			SET @nomeCli = (SELECT nomeCliente FROM tbCliente WHERE CPFCliente LIKE @cpf)

			IF EXISTS(SELECT codCliente FROM tbEncomenda WHERE codCliente = @codCli)
			BEGIN
				PRINT('Impossível excluir '+@nomeCli+' pois o cliente possui encomendas.')
			END
			ELSE
			BEGIN
				DELETE FROM tbCliente
				WHERE CPFCliente LIKE @cpf

				PRINT('Cliente '+@nomeCli+' deletado com sucesso.')
			END
		END
	END

EXEC spExcluiCliente '567.890.123-45'
select * from tbCliente


--Exercicio H
CREATE PROCEDURE spExcluiItem @codEncomenda INT, @codProduto INT
AS
	BEGIN
		IF NOT EXISTS(SELECT codEncomenda FROM tbEncomenda WHERE codEncomenda = @codEncomenda)
		BEGIN
			PRINT('O código de comenda '+@codEncomenda+' não existe')
		END
		ELSE IF NOT EXISTS(SELECT codProduto FROM tbProduto WHERE codProduto = @codProduto)
		BEGIN
			PRINT('O código de produto '+@codProduto+' não existe')
		END
		ELSE
		BEGIN
			DECLARE @dif INT, @dataEntrega DATE
			SET @dataEntrega = (SELECT dataEntregaEncomenda FROM tbEncomenda WHERE codEncomenda = @codEncomenda)
			SET @dif = DATEDIFF(DAY, GETDATE(), @dataEntrega)

			if(@dif > 0)
			BEGIN
				DECLARE @valorItem SMALLMONEY
				SET @valorItem = (SELECT subTotal FROM tbItensEncomenda WHERE codProduto = @codProduto AND codEncomenda = @codEncomenda)
				
				UPDATE tbEncomenda
				SET valorTotalEncomenda = (valorTotalEncomenda - @valorItem)
				WHERE codEncomenda = @codEncomenda
				
				DELETE tbItensEncomenda
				WHERE codProduto = @codProduto AND codEncomenda = @codEncomenda
			END
			ELSE
			BEGIN
				PRINT('A data de entrega é hoje ou já passou.')
			END
		END
	END
