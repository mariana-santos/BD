--USE bdEscola

--Exerc�cio 01
CREATE PROCEDURE spBuscaAluno @cpf VARCHAR (15)
AS
	IF EXISTS (SELECT cpfAluno FROM tbAluno WHERE cpfAluno like @cpf)
		BEGIN
			SELECT nomeAluno, dataNascimentoAluno FROM tbAluno
			WHERE cpfAluno LIKE @cpf
		END
	ELSE
		BEGIN
			PRINT ('CPF '+@cpf+' n�o encontrado')
		END

EXEC spBuscaAluno '2045678990'

--Exerc�cio 02
CREATE PROCEDURE spInsereluno
@nome VARCHAR (35), @dataN SMALLDATETIME , @rg VARCHAR (20), @cpf VARCHAR (20), @naturalidade VARCHAR (2)
AS 
	BEGIN 
		IF EXISTS (SELECT codAluno FROM tbAluno WHERE cpfAluno LIKE @cpf)
			BEGIN
				PRINT('Imposs�vel cadastrar '+@nome+'. CPF: '+@CPF+' J� cadastrado.')
			END
		ELSE
			BEGIN
				INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, cpfAluno, naturalidadeAluno)
				VALUES (@nome, @dataN, @rg, @cpf, @naturalidade)
				DECLARE @cod int
				SET @cod = (SELECT MAX (codAluno) FROM tbAluno)

				PRINT('Aluno '+@nome+' cadastrado com sucesso! ')
				PRINT('C�d: ' + convert(varchar(6), @cod))
			END
	END

EXEC spInsereluno 'Maria Silva', '11/09/2005', '12345', '67890', 'BA'
SELECT * FROM tbAluno

--Exerc�cio 03
ALTER PROCEDURE spAumentaPreco @nome VARCHAR (15), @porcentagem INT
AS
	BEGIN
		IF EXISTS (SELECT codCurso FROM tbCurso WHERE nomeCurso LIKE @nome) 
			BEGIN
				UPDATE tbCurso
				SET valorCurso += valorCurso*@porcentagem/100
				WHERE nomeCurso LIKE @nome
				DECLARE @valor int
				SET @valor = (SELECT valorCurso FROM tbCurso WHERE nomeCurso LIKE @nome)
				PRINT ('Pre�o atualizado com sucesso! Novo pre�o do curso de '+@nome+': '+convert(varchar(50), @valor))
			END
		ELSE
			BEGIN
				PRINT ('Curso '+@nome+' n�o encontrado.')
			END
	END

EXEC spAumentaPreco 'Espanhol', 10
SELECT * FROM tbCurso

--Exerc�cio 04
CREATE PROCEDURE spAlunosDaTurma @turma varchar (15)
AS
	BEGIN
		IF EXISTS (SELECT codTurma FROM tbTurma WHERE nomeTurma LIKE @turma)
			BEGIN
				DECLARE @codTurma INT
				SET @codTurma = (SELECT codTurma FROM tbTurma WHERE nomeTurma LIKE @turma)
				SELECT * FROM tbAluno
				INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
				WHERE codTurma LIKE @codTurma
			END
		ELSE
			BEGIN
				PRINT('Turma '+@turma+' n�o encontrada')
			END
	END

EXEC spAlunosDaTurma '1|A'

--Exerc�cio 05
CREATE PROCEDURE spMatriculaAluno @curso VARCHAR (15), @cpf VARCHAR (15)
AS
	BEGIN
		IF EXISTS (SELECT codCurso FROM tbCurso WHERE nomeCurso LIKE @curso) AND EXISTS (SELECT codAluno FROM tbAluno WHERE cpfAluno LIKE @cpf)
			BEGIN
				DECLARE @codAluno int, @codTurma int, @nome varchar, @turma varchar
				SET @nome = (SELECT nomeAluno FROM tbAluno WHERE cpfAluno LIKE @cpf)
				SET @codAluno = (SELECT codAluno FROM tbAluno WHERE cpfAluno LIKE @cpf)
				IF (@curso LIKE 'Ingl�s')
					BEGIN
						SET @codTurma = 1
					END
				ELSE IF (@curso LIKE 'Alem�o')
					BEGIN
						SET @codTurma = 4
					END
				ELSE 
					BEGIN
						SET @codTurma = 3
					END
				SET @turma = (SELECT nomeTurma FROM tbTurma WHERE codTurma LIKE @codTurma)
				INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
				VALUES ('20/08/2020', @codAluno, @codTurma)
				PRINT ('Aluno '+@nome+' matriculado na turma '+@turma)
			END
		ELSE
			BEGIN
				PRINT('N�o foi poss�vel matricular. Algum dado inexistente')
			END
	END

EXEC spMatriculaAluno 'Alem�o', '67890'
SELECT * FROM tbMatricula