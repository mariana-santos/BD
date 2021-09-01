USE bdEstoque

SELECT * FROM tbFornecedor

--Exercício 01
INSERT INTO tbFornecedor (contatoFornecedor, nomeFornecedor)
VALUES
('Maria Souza', 'Dia')
,('Iara Silva', 'Higas')
,('Jorge Peixoto', 'Extra')

--Exercício 02
SELECT nomeFornecedor, descricaoProduto FROM tbFornecedor
INNER JOIN tbProduto ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

--Exercício 03
SELECT nomeFornecedor, descricaoProduto FROM tbFornecedor
LEFT JOIN tbProduto ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

SELECT descricaoProduto, nomeFornecedor FROM tbProduto
RIGHT JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--Exercício 04
INSERT INTO tbProduto (descricaoProduto, quantidadeProduto, valorProduto)
VALUES
('Desodorante', '5000', '9.99')
,('Fita isolante', '2130', '1.50')
,('Cortador de unhas', '4330', '2.99')

--Exercício 5
SELECT nomeFornecedor, descricaoProduto FROM tbFornecedor
FULL JOIN tbProduto ON tbFornecedor.codFornecedor = tbProduto.codFornecedor

--Exercício 6
--Foram retornadas 16 consultas. O select me mostrou todos os produtos e todos os fornecedores independente de ter código do fornecedor ou do produto, 
--por isso foram mostrados os dados inseridos nos exercícios 1 e 4