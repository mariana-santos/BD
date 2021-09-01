USE bdEscola2

--Exercício A
SELECT nomeCurso, valorCurso FROM tbCurso
WHERE valorCurso < (SELECT AVG (valorCurso) FROM tbCurso)

--Exercício B
SELECT nomeAluno, rgAluno FROM tbAluno
WHERE dataNascAluno = (SELECT MAX (dataNascAluno) FROM tbAluno)

--Exercício C
SELECT nomeAluno FROM tbAluno
WHERE dataNascAluno = (SELECT MIN (dataNascAluno) FROM tbAluno)

--Exercício D
SELECT nomeCurso, valorCurso FROM tbCurso
WHERE valorCurso = (SELECT MAX (valorCurso) FROM tbCurso)

--Exercício E
SELECT nomeAluno, nomeCurso FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE dataMatricula = (SELECT MAX (dataMatricula) FROM tbMatricula)

--Exercício F
SELECT nomeAluno FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
WHERE dataMatricula = (SELECT MIN (dataMatricula) FROM tbMatricula)

--Exercício G
SELECT nomeAluno, rgAluno, dataNascAluno FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE nomeCurso IN (SELECT nomeCurso FROM tbCurso WHERE codCurso = 1)
