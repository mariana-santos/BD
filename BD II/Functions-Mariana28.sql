--Exercícios usando bdEscola
USE bdEscola2

--Exercício 01
CREATE FUNCTION fcDiaSemana (@data DATE) RETURNS VARCHAR (20)
AS
	BEGIN
		DECLARE @diaSemana VARCHAR (20), @dia INT
		SET @dia = DATEPART(DW, @data)

		IF(@dia = 1)
			BEGIN
				SET @diaSemana = 'Domingo'
			END
		ELSE IF(@dia = 2)
			BEGIN
				SET @diaSemana = 'Segunda-feira'
			END
		ELSE IF(@dia = 3)
			BEGIN
				SET @diaSemana = 'Terça-feira'
			END
		ELSE IF(@dia = 4)
			BEGIN
				SET @diaSemana = 'Quarta-feira'
			END
		ELSE IF(@dia = 5)
			BEGIN
				SET @diaSemana = 'Quinta-feira'
			END
		ELSE IF(@dia = 6)
			BEGIN
				SET @diaSemana = 'Sexta-feira'
			END
		ELSE
			BEGIN
				SET @diaSemana = 'Sábado'
			END

		RETURN (@diaSemana)
	END

SELECT dbo.fcDiaSemana ('28-03-2020')

--Exercício 02
CREATE FUNCTION fcCargaHoraria (@cargaHoraria INT) RETURNS VARCHAR (100)
AS
	BEGIN
		DECLARE @return VARCHAR (100)
		IF (@cargaHoraria < 1000)
			BEGIN
				SET @return = 'Curso rápido'
			END
		ELSE
			BEGIN
				SET @return = 'Curso extenso'
			END

		RETURN (@return)
	END

SELECT dbo.fcCargaHoraria(1200)
SELECT dbo.fcCargaHoraria(900)

--Exercício 03
CREATE FUNCTION fcPreco (@preco SMALLMONEY) RETURNS VARCHAR (100)
AS
	BEGIN
		DECLARE @return VARCHAR (100)
		IF (@preco <= 400)
			BEGIN
				SET @return = 'Curso barato'
			END
		ELSE
			BEGIN
				SET @return = 'Curso caro'
			END

		RETURN (@return)
	END

SELECT nomeCurso 'Curso', valorCurso 'Valor', funcao = dbo.fcPreco(valorCurso) FROM tbCurso

--Exercício 04
CREATE FUNCTION fcDataMatricula (@data DATE) RETURNS VARCHAR (15)
AS
	BEGIN
		DECLARE @dataFormatada VARCHAR (15), @dia VARCHAR (15), @mes VARCHAR (15), @ano VARCHAR (15)

		SET @dia = convert(varchar(6), DATEPART(DAY, @data))
		SET @mes = convert(varchar(6), DATEPART (MONTH, @data))
		SET @ano = convert(varchar(6), DATEPART (YEAR, @data))

		SET @dataFormatada = @dia +'/'+@mes+'/'+@ano

		RETURN (@dataFormatada)
	END

SELECT codMatricula, dataMatricula, funcao = dbo.fcDataMatricula(dataMatricula) FROM tbMatricula

--Exercícios usando bdEstoque
USE bdEstoque

CREATE FUNCTION fcDataVenda (@data DATE) RETURNS VARCHAR (20)
AS
	BEGIN
		DECLARE @diaSemana VARCHAR (20), @dia INT
		SET @dia = DATEPART(DW, @data)

		IF(@dia = 1)
			BEGIN
				SET @diaSemana = 'Domingo'
			END
		ELSE IF(@dia = 2)
			BEGIN
				SET @diaSemana = 'Segunda-feira'
			END
		ELSE IF(@dia = 3)
			BEGIN
				SET @diaSemana = 'Terça-feira'
			END
		ELSE IF(@dia = 4)
			BEGIN
				SET @diaSemana = 'Quarta-feira'
			END
		ELSE IF(@dia = 5)
			BEGIN
				SET @diaSemana = 'Quinta-feira'
			END
		ELSE IF(@dia = 6)
			BEGIN
				SET @diaSemana = 'Sexta-feira'
			END
		ELSE
			BEGIN
				SET @diaSemana = 'Sábado'
			END

		RETURN (@diaSemana)
	END

SELECT codvenda 'Cód.', valorTotalVenda 'Valor', dataVenda 'Data', funcao = dbo.fcDataVenda(dataVenda) FROM tbVenda

--Exercício 02
CREATE FUNCTION fcQtdVendas (@cod INT) RETURNS INT
AS
	BEGIN
		DECLARE @vendas INT

		SET @vendas = (SELECT COUNT (codVenda) FROM tbVenda WHERE codCliente = @cod)
		RETURN @vendas
	END

SELECT codCliente 'Cód.', nomeCliente 'Nome', vendas = dbo.fcQtdVendas(codCliente) FROM tbCliente

--Exercício 03
CREATE FUNCTION fcVendedores (@codVendedor INT, @mes INT) RETURNS INT
AS
	BEGIN
		DECLARE @vendas INT
		SET @vendas = (SELECT COUNT(codCliente) FROM tbVenda WHERE @codVendedor = codVendedor and @mes like DATEPART(MONTH ,dataVenda))
		RETURN @vendas
	END

SELECT dbo.fcVendedores (1, 5)

--Exercício 04
CREATE FUNCTION fcValidaCPF (@cpf VARCHAR) RETURNS VARCHAR (1)
AS
	BEGIN
		DECLARE @i INT, @soma INT, @primeiroD INT, @segundoD INT,
		 @cpfT VARCHAR(11), @digIguais CHAR(1), @r CHAR(1)

		SET @r = 'N'

		SET @cpfT = SUBSTRING(@CPF, 1, 1)

		SET @i = 1
		SET @digIguais = '5'

		WHILE(@i <= 11)
			IF(SUBSTRING(@CPF, @i, 1) <> @cpfT)
				SET @digIguais = 'N'
			SET @i += 1

		IF(@digIguais LIKE 'N')
			SET @soma = 0
			SET @i = 1
			WHILE(@i <= 9)
				SET @soma = @soma + CONVERT(INT,SUBSTRING(@CPF, @i, 1) * (11 - @i))
				SET @i += 1

			SET @primeiroD = 11 - (@soma % 11)

		IF(@primeiroD > 9)
			SET @primeiroD = 0


		SET @soma = 0
		SET @i = 1
		WHILE(@i <= 10)
			SET @soma = @soma + CONVERT(INT,SUBSTRING(@CPF, @i, 1) * (12 - @i))
			SET @i += 1
		SET @segundoD = 11 - (@soma % 11)

		IF(@segundoD > 9)
			SET @primeiroD = 0


		IF(@primeiroD LIKE SUBSTRING(@CPF, LEN(@CPF)-1, 1)) AND (@segundoD LIKE SUBSTRING(@CPF, LEN(@CPF), 1))
			SET @r = 'S'
		ELSE
			SET @r = 'N'
		RETURN @r
	END

SELECT dbo.fcValidaCPF('530.689.448-80')