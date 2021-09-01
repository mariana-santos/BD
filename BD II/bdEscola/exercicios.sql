USE bdEscola

GO

--Exercício 01
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso

--Exercício 02
SELECT COUNT (nomeAluno) AS 'Qtd. Aluno', nomeCurso AS 'Curso' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
GROUP BY nomeCurso

--Exercício 03
SELECT COUNT (nomeAluno) AS 'Qtd. Aluno', nomeTurma AS 'Turma' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
GROUP BY nomeTurma

--Exercício 04
SELECT COUNT (nomeAluno) AS 'Alunos Matriculados em 2016' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
WHERE DATEPART (YEAR, dataMatricula) = 2016

--Exercício 05
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso', nomeTurma AS 'Turma' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
GROUP BY nomeCurso, nomeAluno, nomeTurma
ORDER BY nomeAluno

--Exercício 06
SELECT nomeCurso AS 'Curso', horarioTurma AS 'Horário' FROM tbCurso
INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso

--Exercício 07
SELECT COUNT (nomeAluno) AS 'Qtd. Aluno', naturalidadeAluno AS 'Estado' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (tbCurso.codCurso = 1)
GROUP BY naturalidadeAluno

--Exercício 08
SELECT nomeAluno AS 'Aluno', dataMatricula AS 'Data matrícula' FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno 

--Exercício 09
SELECT nomeAluno AS 'Aluno' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (tbCurso.codCurso = 1) AND (nomeAluno LIKE 'A%')

--Exercício 10
SELECT COUNT (dataMatricula) AS 'Qtd. matrículas 2016' FROM tbMatricula
WHERE DATEPART (YEAR, dataMatricula) = 2016 

--Exercício 11
SELECT COUNT (dataMatricula) AS 'Qtd. matrículas', nomeCurso AS 'Curso' FROM tbMatricula
INNER JOIN tbCurso ON tbCurso.codCurso = tbMatricula.codMatricula
GROUP BY nomeCurso

--Exercício 12
SELECT COUNT (nomeAluno) AS 'Aluno' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (valorCurso > '300')

--Exercício 13
SELECT COUNT (nomeAluno) AS 'Aluno' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (tbCurso.codCurso = 2)