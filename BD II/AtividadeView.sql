USE bdEscola2

--Exerc�cio 01
CREATE VIEW vwPreco_Baixo AS
	SELECT codCurso 'C�d.', nomeCurso 'Curso', cargaHorariaCurso 'CargaHoraria', valorCurso 'Pre�o' FROM tbCurso
	WHERE valorCurso < (SELECT AVG (valorCurso) FROM tbCurso)

SELECT * FROM vwPreco_Baixo

--Exerc�cio 02
SELECT * FROM vwPreco_Baixo
ORDER BY cargaHorariaCurso

--Exerc�cio 03
CREATE VIEW vwAlunos_Turma AS
	SELECT descricaoTurma 'Turma', COUNT (nomeAluno) 'Qtd' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
	INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
	INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
	GROUP BY descricaoTurma

SELECT * FROM vwAlunos_Turma

--Exerc�cio 04
SELECT * FROM vwAlunos_Turma
WHERE Qtd = (SELECT MAX (Qtd) FROM vwAlunos_Turma)

--Exerc�cio 05
CREATE VIEW vwTurma_Curso AS
	SELECT nomeCurso Curso, COUNT (descricaoTurma) 'Turmas' FROM tbCurso
	INNER JOIN tbTurma ON tbTurma.codCurso = tbCurso.codCurso
	GROUP BY nomeCurso

SELECT * FROM vwTurma_Curso

--Exerc�cio 06
SELECT * FROM vwTurma_Curso
WHERE Turmas = (SELECT MIN(Turmas) FROM vwTurma_Curso)