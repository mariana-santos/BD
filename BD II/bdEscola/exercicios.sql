USE bdEscola

GO

--Exerc�cio 01
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso

--Exerc�cio 02
SELECT COUNT (nomeAluno) AS 'Qtd. Aluno', nomeCurso AS 'Curso' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
GROUP BY nomeCurso

--Exerc�cio 03
SELECT COUNT (nomeAluno) AS 'Qtd. Aluno', nomeTurma AS 'Turma' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
GROUP BY nomeTurma

--Exerc�cio 04
SELECT COUNT (nomeAluno) AS 'Alunos Matriculados em 2016' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
WHERE DATEPART (YEAR, dataMatricula) = 2016

--Exerc�cio 05
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso', nomeTurma AS 'Turma' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
GROUP BY nomeCurso, nomeAluno, nomeTurma
ORDER BY nomeAluno

--Exerc�cio 06
SELECT nomeCurso AS 'Curso', horarioTurma AS 'Hor�rio' FROM tbCurso
INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso

--Exerc�cio 07
SELECT COUNT (nomeAluno) AS 'Qtd. Aluno', naturalidadeAluno AS 'Estado' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (tbCurso.codCurso = 1)
GROUP BY naturalidadeAluno

--Exerc�cio 08
SELECT nomeAluno AS 'Aluno', dataMatricula AS 'Data matr�cula' FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno 

--Exerc�cio 09
SELECT nomeAluno AS 'Aluno' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (tbCurso.codCurso = 1) AND (nomeAluno LIKE 'A%')

--Exerc�cio 10
SELECT COUNT (dataMatricula) AS 'Qtd. matr�culas 2016' FROM tbMatricula
WHERE DATEPART (YEAR, dataMatricula) = 2016 

--Exerc�cio 11
SELECT COUNT (dataMatricula) AS 'Qtd. matr�culas', nomeCurso AS 'Curso' FROM tbMatricula
INNER JOIN tbCurso ON tbCurso.codCurso = tbMatricula.codMatricula
GROUP BY nomeCurso

--Exerc�cio 12
SELECT COUNT (nomeAluno) AS 'Aluno' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (valorCurso > '300')

--Exerc�cio 13
SELECT COUNT (nomeAluno) AS 'Aluno' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE (tbCurso.codCurso = 2)