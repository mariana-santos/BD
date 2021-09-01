USE Exerc01
GO

--Exercício 01--
SELECT SUM (codFunc)AS 'soma códigos' FROM tbFunc

--Exercício 02--
SELECT SUM (idadeFunc)AS 'soma idades' FROM tbFunc

--Exercício 03--
SELECT SUM (qtdFilhosFunc)AS 'soma qtd filhos' FROM tbFunc

--Exercício 04--
SELECT SUM (salarioFuncional)AS 'soma salários' FROM tbFuncional

--Exercício 05--
SELECT SUM (tempoEmpresaFuncional)AS 'soma tempo empresa' FROM tbFuncional

--Exercício 06--
SELECT SUM (tempoCargoFuncional)AS 'soma tempo cargo' FROM tbFuncional

--Exercício 07--
SELECT MAX (codFunc) AS 'maior código' FROM tbFunc

--Exercício 08--
SELECT MIN (codFunc) AS 'menor código' FROM tbFunc

--Exercício 09--
SELECT MAX (idadeFunc) AS 'maior idade' FROM tbFunc

--Exercício 10--
SELECT MIN (idadeFunc) AS 'menor idade' FROM tbFunc

--Exercício 11-- 
SELECT MAX (qtdFilhosFunc) AS 'maior qtd filhos' FROM tbFunc

--Exercício 12--
SELECT MIN (qtdFilhosFunc) AS 'menor qtd filhos' FROM tbFunc

--Exercício 13-- 
SELECT MAX (salarioFuncional) AS 'maior salário' FROM tbFuncional

--Exercício 14--
SELECT MIN (salarioFuncional) AS 'menor salário' FROM tbFuncional

--Exercício 15-- 
SELECT MAX (tempoEmpresaFuncional) AS 'maior tempo de empresa' FROM tbFuncional

--Exercício 16--
SELECT MIN (tempoCargoFuncional) AS 'menor tempo de empresa' FROM tbFuncional

--Exercício 17-- 
SELECT MAX (tempoEmpresaFuncional) AS 'maior tempo de cargo' FROM tbFuncional

--Exercício 18--
SELECT MIN (tempoEmpresaFuncional) AS 'menor tempo de cargo' FROM tbFuncional

--Exercício 19--
SELECT AVG (codFunc) AS 'média códigos' FROM tbFunc

--Exercício 20--
SELECT AVG (idadeFunc) AS 'média idades' FROM tbFunc

--Exercício 21--
SELECT AVG (qtdFilhosFunc) AS 'média filhos' FROM tbFunc

--Exercício 22--
SELECT AVG (salarioFuncional) AS 'média salário' FROM tbFuncional

--Exercício 23--
SELECT AVG (tempoEmpresaFuncional) AS 'média tempo empresa' FROM tbFuncional

--Exercício 24--
SELECT AVG (tempoCargoFuncional) AS 'média tempo cargo' FROM tbFuncional

--Exercício 25--
SELECT COUNT (codFunc) AS 'ganham mais que 800' FROM tbFuncional
WHERE (salarioFuncional > 800)

--Exercício 26--
SELECT COUNT (codFunc) AS 'ganham mais que 1000' FROM tbFuncional
WHERE (salarioFuncional > 1000)

--Exercício 27--
SELECT COUNT (codFunc) AS 'ganham menos que 400' FROM tbFuncional
WHERE (salarioFuncional < 400)

--Exercício 28--
SELECT COUNT (codFunc) AS 'ganham menos que 2000' FROM tbFuncional
WHERE (salarioFuncional < 2000)

--Exercício 29--
SELECT COUNT (codFunc) AS 'ganham mais que 8000' FROM tbFuncional
WHERE (salarioFuncional > 8000)

--Exercício 30--
SELECT COUNT (codFunc) AS 'ganham menos que 1000' FROM tbFuncional
WHERE (salarioFuncional < 1000)

--Exercício 31--
SELECT COUNT (codFunc) AS '1 ano no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional = 1)

--Exercício 32--
SELECT COUNT (codFunc) AS '3 anos no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional = 3)

--Exercício 33--
SELECT COUNT (codFunc) AS '4 anos no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional = 4)

--Exercício 34--
SELECT COUNT (codFunc) AS 'mais de 10 anos no cargo' FROM tbFuncional
WHERE (tempoCargoFuncional > 10)

--Exercício 35--
SELECT COUNT (codFunc) AS 'idade maior que 20' FROM tbFunc
WHERE (idadeFunc > 20)

--Exercício 36--
SELECT COUNT (codFunc) AS 'idade maior que 40' FROM tbFunc
WHERE (idadeFunc > 20)

--Exercício 37--
SELECT COUNT (codFunc) AS 'idade menor que 80' FROM tbFunc
WHERE (idadeFunc < 80)

--Exercício 38--
SELECT COUNT (codFunc) AS 'idade menor que 200' FROM tbFunc
WHERE (idadeFunc < 200)

--Exercício 39--
SELECT COUNT (codFunc) AS 'qtd gerentes' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Gerente')

--Exercício 40--
SELECT COUNT (codFunc) AS 'qtd analistas' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Analista')

--Exercício 41--
SELECT COUNT (codFunc) AS 'qtd designers' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Designer')

--Exercício 42--
SELECT COUNT (codFunc) AS 'qtd programadores' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Programadora' OR cargoFuncional LIKE 'Desenvolvedora')

--Exercício 43--
SELECT SUM (salarioFuncional) AS 'soma salario analistas' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Analista')

--Exercício 44--
SELECT SUM (salarioFuncional) AS 'soma salario gerentes' FROM tbFuncional
WHERE (cargoFuncional LIKE 'Gerente')

--Exercício 45--
SELECT COUNT (codFunc) AS 'nasceram em sp' FROM tbFunc
WHERE (ufFunc LIKE 'SP')

--Exercício 46--
SELECT COUNT (codFunc) AS 'nasceram na bahia' FROM tbFunc
WHERE (ufFunc LIKE 'BA')

--Exercício 47--
SELECT COUNT (codFunc) AS 'nasceram no ceara' FROM tbFunc
WHERE (ufFunc LIKE 'CE')

--Exercício 48--
SELECT COUNT (codFunc) AS 'nasceram no rj' FROM tbFunc
WHERE (ufFunc LIKE 'RJ')

--Exercício 49--
SELECT COUNT (codFunc) AS 'não nasceram no rj' FROM tbFunc
WHERE (ufFunc NOT LIKE 'RJ')

--Exercício 50--
SELECT COUNT (codFunc) AS 'sindicalizados' FROM tbFuncional
WHERE (sindicalizadoFuncional LIKE 'S')

--Exercício 51--
SELECT COUNT (codFunc) AS 'não sindicalizados' FROM tbFuncional
WHERE (sindicalizadoFuncional LIKE 'N')
    