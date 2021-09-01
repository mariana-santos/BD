USE bdRecursosHumanos
GO

--exerc a
SELECT COUNT (codDependente) AS 'dependentes funcionário 01' FROM tbDependente
WHERE (codDependente = 1)

--exerc b
SELECT codDepartamento, AVG (salarioFuncionario) AS 'média salários' FROM tbFuncionario
WHERE (codFuncionario != 10)
GROUP BY codDepartamento

--exerc c
SELECT codDepartamento, SUM (salarioFuncionario) AS 'soma salários dep 9' FROM tbFuncionario
WHERE (codDepartamento = 9)
GROUP BY codDepartamento

--exerc d
SELECT COUNT (codDependente) AS 'qtd dependentes homens' FROM tbDependente
WHERE (sexoDependente LIKE 'M')

--exerc e
SELECT COUNT (codDependente) AS 'qtd dependentes q nasceram em 2000' FROM tbDependente
WHERE (DATEPART ( year , dataNascimentoDependente ) = 2000)

--exerc f
SELECT COUNT (codFuncionario) AS 'qtd func. no dep. 3' FROM tbFuncionario
WHERE (codDepartamento = 3)

--EXERC G
SELECT AVG (salarioFuncionario) AS 'média salário dep 2' FROM tbFuncionario
WHERE (codDepartamento = 2)

--exerc h
SELECT COUNT (codDependente) AS 'qtd dep de jun e dos func. 1 ou 2' FROM tbDependente
WHERE (DATEPART ( MONTH , dataNascimentoDependente ) = 6) AND (codFuncionario = 1 OR codFuncionario = 2)

--EXERC I
SELECT COUNT (codDependente) AS 'qtd depend. homens DE ANTES DE 2000' FROM tbDependente
WHERE (DATEPART ( year , dataNascimentoDependente ) < 2000) AND (sexoDependente LIKE 'M')

--EXERC J
SELECT COUNT (codDependente) AS 'qtd MULHERES Q NÃO SÃO DO FUNC. 2' FROM tbDependente
WHERE (sexoDependente LIKE 'F') AND (codFuncionario != 2)

--EXERC K
SELECT COUNT (codDependente) AS 'QTD DEPENDENTES FUNC. COD 3' FROM tbDependente
WHERE (codFuncionario = 3)

--EXERC L
SELECT codDepartamento, SUM (salarioFuncionario) AS 'SOMA salários' FROM tbFuncionario
GROUP BY codDepartamento

--EXERC M
SELECT codDepartamento, AVG (salarioFuncionario) AS 'MÉDIA salários' FROM tbFuncionario
GROUP BY codDepartamento

--EXERC N 
SELECT COUNT (codFuncionario) AS 'QTD FUNC. DO DEP. 3' FROM tbFuncionario
WHERE (codDepartamento = 3)

--EXERC O
SELECT nomeFuncionario AS 'NOME', dataNascimentoFuncionario AS 'DATA NASCIMENTO' FROM tbFuncionario
ORDER BY nomeFuncionario

--EXERC P
SELECT MAX (SALARIOFUNCIONARIO) AS 'MAIOR SALÁRIO' FROM tbFuncionario

--EXERC Q
SELECT MIN (SALARIOFUNCIONARIO) AS 'MENOR SALÁRIO' FROM tbFuncionario

