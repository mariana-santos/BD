USE Exerc01
GO

INSERT INTO tbFunc (nomeFunc, ufFunc, idadeFunc, qtdFilhosFunc)
VALUES
('Maria Pereira', 'RJ', 30, 0)
,('Jade Souza', 'PE', 20, 1)
,('João Fernandes', 'SP', 25, 2)
,('Julia Ferraz', 'ES', 47, 0)
,('Alice Marques', 'DF', 32, 1)
,('Vinicius Pereira', 'SP', 26, 7)
,('Ana Santos', 'MT', 35, 0)
,('Gabriela Souza', 'SP', 24, 0)
,('Isabela Albuquerque', 'DF', 35, 1)
,('Julia Souza', 'MG', 20, 2)

SELECT * FROM tbFunc

INSERT INTO tbFuncional(cargoFuncional, salarioFuncional, tempoEmpresaFuncional, tempoCargoFuncional, sindicalizadoFuncional, codFunc)
VALUES
('Caixa', 1700, 3, 2, 'S', 1)
,('Estagiária', 1000, 1, 1, 'N', 2)
,('Estagiário', 900, 0.5, 0.5, 'N', 3)
,('Desenvolvedora', 3500, 5, 5, 'S', 4)
,('Analista', 2500, 3, 3, 'N', 5)
,('Gerente', 4500, 2, 2, 'S', 6)
,('Supervisora', 2600, 1.2, 1.2, 'S', 7)
,('Programadora', 2100, 3, 2.5, 'N', 8)
,('Designer', 2000, 2.6, 2.6, 'N', 9)
,('Designer', 1300, 1.3, 1.3, 'N', 10)

SELECT * FROM tbFuncional