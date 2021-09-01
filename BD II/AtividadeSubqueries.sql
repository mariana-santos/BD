USE bdEstoque

--Exercício 01
SELECT codProduto, descricaoProduto, nomeFabricante FROM tbProduto
FULL JOIN tbFabricante ON tbFabricante.codFabricante = tbProduto.codFabricante
WHERE valorProduto IN (SELECT MAX (valorProduto) FROM tbProduto)

--Exercício 02
SELECT descricaoProduto, nomeFabricante, valorProduto FROM tbProduto
FULL JOIN tbFabricante ON tbFabricante.codFabricante = tbProduto.codFabricante
WHERE valorProduto IN (SELECT (valorProduto) FROM tbProduto WHERE valorProduto > 
(SELECT AVG (valorProduto) FROM tbProduto))

--Exercício 03
SELECT codVenda, nomeCliente FROM tbCliente
INNER JOIN tbVenda ON tbVenda.codCliente = tbCliente.codCliente
WHERE valorTotalVenda IN (SELECT (valorTotalVenda) FROM tbVenda WHERE valorTotalVenda > 
(SELECT AVG (valorTotalVenda) FROM tbVenda))

--Exercício 04
SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE valorProduto = (SELECT MAX (valorProduto) FROM tbProduto)

--Exercício 05
SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE valorProduto = (SELECT MIN (valorProduto) FROM tbProduto)
