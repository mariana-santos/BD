USE bdLocadoraVeiculo
--Questão E

--10 não entendi tenta fazer ai ou me explica e o merge ta dando merda, tem q mudar

--11
SELECT nomeCliente 'Nome' FROM tbCliente
WHERE idCliente NOT IN (SELECT idCliente FROM tbLocacao)

--12
SELECT AVG (kmVeiculo) 'Média KM' FROM tbVeiculo 

--13
SELECT nomeFabricante 'Fabricante', AVG (kmVeiculo) 'Média KM' FROM tbVeiculo
INNER JOIN tbFabricante ON tbVeiculo.idFabricante = tbFabricante.idFabricante
GROUP BY nomeFabricante

--14
SELECT modeloVeiculo 'Modelo', descTipoCombustivel 'Tipo combustível' FROM tbVeiculo
INNER JOIN tbTipoCombustivel ON tbTipoCombustivel.idTipoCombustivel = tbVeiculo.idTipoCombustivel

--15
SELECT descTipoCombustivel 'Tipo combustível' FROM tbTipoCombustivel
WHERE idTipoCombustivel NOT IN (SELECT idTipoCombustivel FROM tbVeiculo)

--16
SELECT placaVeiculo 'Placa', modeloVeiculo 'Modelo', dataLocacao 'Data', nomeCliente 'Nome' FROM tbLocacao
INNER JOIN tbVeiculo ON tbVeiculo.idVeiculo = tbLocacao.idVeiculo
INNER JOIN tbCliente ON tbCliente.idCliente = tbLocacao.idCliente

--17
SELECT placaVeiculo 'Placa', COUNT (idLocacao) 'Soma' FROM tbVeiculo
INNER JOIN tbLocacao ON tbVeiculo.idVeiculo = tbLocacao.idVeiculo
GROUP BY placaVeiculo

--18
SELECT descCategoriaVeiculo 'Desc.', COUNT (idLocacao) 'Soma' FROM tbVeiculo
INNER JOIN tbCategoriaVeiculo ON tbVeiculo.idCategoriaVeiculo = tbCategoriaVeiculo.idCategoriaVeiculo
INNER JOIN tbLocacao ON tbVeiculo.idVeiculo = tbLocacao.idVeiculo
GROUP BY descCategoriaVeiculo

--19
SELECT nomeFabricante 'Fabricante', AVG (valorTotal) 'Média R$' FROM tbLocacao
INNER JOIN tbVeiculo ON tbVeiculo.idVeiculo = tbLocacao.idVeiculo
INNER JOIN tbFabricante ON tbFabricante.idFabricante = tbVeiculo.idFabricante
GROUP BY nomeFabricante

--20
SELECT nomeCliente 'Cliente', AVG (valorTotal) 'Média R$' FROM tbLocacao
INNER JOIN tbCliente ON tbCliente.idCliente = tbLocacao.idCliente
GROUP BY nomeCliente

--21
SELECT descCategoriaVeiculo 'Categoria mais cara' FROM tbCategoriaVeiculo
WHERE valorDiariaCategoriaVeiculo = (SELECT MAX (valorDiariaCategoriaVeiculo) from tbCategoriaVeiculo)

--22
SELECT nomeFabricante 'Fabricante mais caro' FROM tbFabricante
INNER JOIN tbVeiculo ON tbFabricante.idFabricante = tbVeiculo.idFabricante
INNER JOIN tbCategoriaVeiculo ON tbVeiculo.idCategoriaVeiculo = tbCategoriaVeiculo.idCategoriaVeiculo
WHERE valorDiariaCategoriaVeiculo = (SELECT MAX (valorDiariaCategoriaVeiculo) from tbCategoriaVeiculo)

--23
SELECT modeloVeiculo 'Modelo', placaVeiculo 'Placa' FROM tbVeiculo
WHERE idVeiculo IN (SELECT idVeiculo FROM tbLocacao WHERE valorTotal = (SELECT MAX (valorTotal) FROM tbLocacao))

--24
SELECT modeloVeiculo 'Modelo', placaVeiculo 'Placa', nomeFabricante 'Fabricante' FROM tbVeiculo
INNER JOIN tbFabricante ON tbFabricante.idFabricante = tbVeiculo.idFabricante
WHERE idVeiculo IN (SELECT idVeiculo FROM tbLocacao)
ORDER BY placaVeiculo

--25
SELECT nomeCliente 'Cliente', COUNT (idLocacao) 'Locações' FROM tbLocacao
INNER JOIN tbCliente ON tbCliente.idCliente = tbLocacao.idCliente
INNER JOIN tbVeiculo ON tbVeiculo.idVeiculo = tbLocacao.idVeiculo
INNER JOIN tbFabricante ON tbFabricante.idFabricante = tbVeiculo.idFabricante
WHERE nomeFabricante LIKE 'Ford'
GROUP BY nomeCliente

--26
SELECT COUNT (idCliente) '> 30' FROM tbCliente
WHERE DATEDIFF(YEAR, dtNascCliente, GETDATE()) > 30

--27
SELECT AVG (DATEDIFF(YEAR, dtNascCliente, GETDATE())) 'Média Idade' FROM tbCliente

--28
SELECT nomeCliente 'Cliente' FROM tbCliente
WHERE DATEDIFF(YEAR, dtNascCliente, GETDATE()) IN (SELECT MIN (DATEDIFF(YEAR, dtNascCliente, GETDATE())) FROM tbCliente)

--29
SELECT nomeCliente 'Cliente' FROM tbCliente
WHERE DATEDIFF(YEAR, dtNascCliente, GETDATE()) IN (SELECT MAX (DATEDIFF(YEAR, dtNascCliente, GETDATE())) FROM tbCliente)

--30
SELECT nomeCliente 'Cliente', DATEPART (MONTH, dtNascCliente) 'Mês niver' FROM tbCliente

--31
SELECT DATEPART (MONTH, dataLocacao) 'Mês', COUNT (idLocacao) 'Locações' FROM tbLocacao
GROUP BY DATEPART (MONTH, dataLocacao)

--32
SELECT COUNT (idVeiculo) 'Não saem segunda' FROM tbVeiculo
WHERE placaVeiculo LIKE '%%%%%%1' OR placaVeiculo LIKE '%%%%%%2'

--33 (o merge ta dando merda, tem q mudar
CREATE TABLE tbVeiculoLoja2(
	idVeiculo INT PRIMARY KEY IDENTITY(1,1)
	,modeloVeiculo VARCHAR (20) NOT NULL
	,placaVeiculo VARCHAR (7) NOT NULL
	,origemVeiculo VARCHAR (2) NOT NULL
	,idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
	,idTipoCombustivel INT FOREIGN KEY REFERENCES tbTipoCombustivel(idTipoCombustivel)
	,idCategoriaVeiculo INT FOREIGN KEY REFERENCES tbCategoriaVeiculo(idCategoriaVeiculo)
	,kmVeiculo INT NOT NULL
)

INSERT INTO tbVeiculoLoja2(modeloVeiculo, placaVeiculo, origemVeiculo, idFabricante, idTipoCombustivel, idCategoriaVeiculo, kmVeiculo)
VALUES
('Tucson', 'MAR8465', 'MT', 4, 3, 1, 200000)
,('Corolla', 'SHF3659', 'BA', 5, 5, 2, 30000)
,('SRV', 'HFS2856', 'MA', 3, 2, 3, 2010)
,('EcoSport', 'GFD1846', 'AC', 1, 1, 4, 1000)

MERGE tbVeiculo destino
	USING tbVeiculoLoja2 origem
	ON origem.idVeiculo = destino.idVeiculo

	WHEN NOT MATCHED THEN
		INSERT VALUES (origem.idVeiculo, origem.modeloVeiculo, origem.placaVeiculo, origem.origemVeiculo, origem.idFabricante,
		origem.idTipoCombustivel, origem.idCategoriaVeiculo, origem.kmVeiculo);
	
SELECT * FROM tbCliente
SELECT * FROM tbVeiculo
SELECT * FROM tbLocacao
SELECT * FROM tbCategoriaVeiculo
select * FROM tbFabricante
SELECT * FROM tbTipoCombustivel

