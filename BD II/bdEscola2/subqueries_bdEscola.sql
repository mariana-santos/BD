USE bdEscola2

--Exerc�cio A
SELECT nomeCurso, valorCurso FROM tbCurso
WHERE valorCurso < (SELECT AVG (valorCurso) FROM tbCurso)

--Exerc�cio B
SELECT nomeAluno, rgAluno FROM tbAluno
WHERE dataNascAluno = (SELECT MAX (dataNascAluno) FROM tbAluno)

--Exerc�cio C
SELECT nomeAluno FROM tbAluno
WHERE dataNascAluno = (SELECT MIN (dataNascAluno) FROM tbAluno)

--Exerc�cio D
SELECT nomeCurso, valorCurso FROM tbCurso
WHERE valorCurso = (SELECT MAX (valorCurso) FROM tbCurso)

--Exerc�cio E
SELECT nomeAluno, nomeCurso FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE dataMatricula = (SELECT MAX (dataMatricula) FROM tbMatricula)

--Exerc�cio F
SELECT nomeAluno FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
WHERE dataMatricula = (SELECT MIN (dataMatricula) FROM tbMatricula)

--Exerc�cio G
SELECT nomeAluno, rgAluno, dataNascAluno FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE nomeCurso IN (SELECT nomeCurso FROM tbCurso WHERE codCurso = 1)
