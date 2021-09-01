USE Exerc01
GO

--Exerc�cio 01--
SELECT SUM (codFunc)AS 'soma c�digos' FROM tbFunc

--Exerc�cio 02--
SELECT SUM (idadeFunc)AS 'soma idades' FROM tbFunc

--Exerc�cio 03--
SELECT SUM (qtdFilhosFunc)AS 'soma qtd filhos' FROM tbFunc

--Exerc�cio 04--
SELECT SUM (salarioFuncional)AS 'soma sal�rios' FROM tbFuncional

--Exerc�cio 05--
SELECT SUM (tempoEmpresaFuncional)AS 'soma tempo empresa' FROM tbFuncional

--Exerc�cio 06--
SELECT SUM (tempoCargoFuncional)AS 'soma tempo cargo' FROM tbFuncional

--Exerc�cio 07--
SELECT MAX (codFunc) AS 'maior c�digo' FROM tbFunc

--Exerc�cio 08--
SELECT MIN (codFunc) AS 'menor c�digo' FROM tbFunc

--Exerc�cio 09--
SELECT MAX (idadeFunc) AS 'maior idade' FROM tbFunc

--Exerc�cio 10--
SELECT MIN (idadeFunc) AS 'menor idade' FROM tbFunc

--Exerc�cio 11-- 
SELECT MAX (qtdFilhosFunc) AS 'maior qtd filhos' FROM tbFunc

--Exerc�cio 12--
SELECT MIN (qtdFilhosFunc) AS 'menor qtd filhos' FROM tbFunc

--Exerc�cio 13-- 
SELECT MAX (salarioFuncional) AS 'maior sal�rio' FROM tbFuncional

--Exerc�cio 14--
SELECT MIN (salarioFuncional) AS 'menor sal�rio' FROM tbFuncional

--Exerc�cio 15-- 
SELECT MAX (tempoEmpresaFuncional) AS 'maior tempo de empresa' FROM tbFuncional

--Exerc�cio 16--
SELECT MIN (tempoCargoFuncional) AS 'menor tempo de empresa' FROM tbFuncional

--Exerc�cio 17-- 
SELECT MAX (tempoEmpresaFuncional) AS 'maior tempo de cargo' FROM tbFuncional

--Exerc�cio 18--
SELECT MIN (tempoEmpresaFuncional) AS 'menor tempo de cargo' FROM tbFuncional

--Exerc�cio 19--
SELECT AVG (codFunc) AS 'm�dia c�digos' FROM tbFunc

--Exerc�cio 20--
SELECT AVG (idadeFunc) AS 'm�dia idades' FROM tbFunc

--Exerc�cio 21--
SELECT AVG (qtdFilhosFunc) AS 'm�dia filhos' FROM tbFunc

--Exerc�cio 22--
SELECT AVG (salarioFuncional) AS 'm�dia sal�rio' FROM tbFuncional

--Exerc�cio 23--
SELECT AVG (tempoEmpresaFuncional) AS 'm�dia tempo empresa' FROM tbFuncional

--Exerc�cio 24--
SELECT AVG (tempoCargoFuncional) AS 'm�dia tempo cargo' FROM tbFuncional

--Exerc�cio 25--
SELECT COUNT (codFunc) AS 'ganham mais que 800' FROM tbFuncional
WHERE (salarioFuncional > 800)

--Exerc�cio 26--
SELECT COUNT (codFunc) AS 'ganham mais que 1000' FROM tbFuncional
WHERE (salarioFuncional > 1000)

--Exerc�cio 27--
SELECT COUNT (codFunc) AS 'ganham menos que 400' FROM tbFuncional
WHERE (salarioFuncional < 400)

--Exerc�cio 28--
SELECT COUNT (codFunc) AS 'ganham menos que 2000' FROM tbFuncional
WHERE (salarioFuncional < 2000)

--Exerc�cio 29--
SELECT COUNT (codFunc) AS 'ganham mais que 8000' FROM tbFuncional
WHERE (salarioFuncional > 8000)

--Exerc�cio 30--
SELECT COUNT (codFunc) AS 'ganham menos que 1000' FROM tbFuncional
WHERE (salarioFuncional < 1000)

--Exerc�cio 31--
SELECT COUNT (codFunc) AS '1 ano no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional = 1)

--Exerc�cio 32--
SELECT COUNT (codFunc) AS '3 anos no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional = 3)

--Exerc�cio 33--
SELECT COUNT (codFunc) AS '4 anos no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional = 4)

--Exerc�cio 34--
SELECT COUNT (codFunc) AS 'mais de 10 anos no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional > 10)

--Exerc�cio 35--
SELECT COUNT (codFunc) AS 'idade maior que 20' FROM tbFunc
WHERE (idadeFunc > 20)

--Exerc�cio 36--
SELECT COUNT (codFunc) AS 'idade maior que 40' FROM tbFunc
WHERE (idadeFunc > 20)

--Exerc�cio 37--
SELECT COUNT (codFunc) AS 'idade menor que 80' FROM tbFunc
WHERE (idadeFunc < 80)

--Exerc�cio 38--
SELECT COUNT (codFunc) AS 'idade menor que 200' FROM tbFunc
WHERE (idadeFunc < 200)

--Exerc�cio 39--
SELECT COUNT (codFunc) AS 'qtd gerentes' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Gerente')

--Exerc�cio 40--
SELECT COUNT (codFunc) AS 'qtd analistas' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Analista')

--Exerc�cio 41--
SELECT COUNT (codFunc) AS 'qtd designers' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Designer')

--Exerc�cio 42--
SELECT COUNT (codFunc) AS 'qtd programadores' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Programadora' OR cargoFuncional LIKE 'Desenvolvedora')

--Exerc�cio 43--
SELECT SUM (salarioFuncional) AS 'soma salario analistas' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Analista')

--Exerc�cio 44--
SELECT SUM (salarioFuncional) AS 'soma salario gerentes' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Gerente')

--Exerc�cio 45--
SELECT COUNT (codFunc) AS 'nasceram em sp' FROM tbFunc
WHERE (ufFunc LIKE 'SP')

--Exerc�cio 46--
SELECT COUNT (codFunc) AS 'nasceram na bahia' FROM tbFunc
WHERE (ufFunc LIKE 'BA')

--Exerc�cio 47--
SELECT COUNT (codFunc) AS 'nasceram no ceara' FROM tbFunc
WHERE (ufFunc LIKE 'CE')

--Exerc�cio 48--
SELECT COUNT (codFunc) AS 'nasceram no rj' FROM tbFunc
WHERE (ufFunc LIKE 'RJ')

--Exerc�cio 49--
SELECT COUNT (codFunc) AS 'n�o nasceram no rj' FROM tbFunc
WHERE (ufFunc NOT LIKE 'RJ')

--Exerc�cio 50--
SELECT COUNT (codFunc) AS 'sindicalizados' FROM tbFuncional
WHERE (sindicalizadoFuncional LIKE 'S')

--Exerc�cio 51--
SELECT COUNT (codFunc) AS 'n�o sindicalizados' FROM tbFuncional
WHERE (sindicalizadoFuncional LIKE 'N')
    