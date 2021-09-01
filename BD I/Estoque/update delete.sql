go 
use bdEstoque

--Exerc�cio 1
update tbProduto
set valorProduto = valorProduto + ((valorProduto * 10)/100)
where codFabricante = 1

--Exerc�cio 2
update tbProduto
set valorProduto = valorProduto - ((valorProduto * 7)/100)
where codFabricante = 2

--Exerc�cio 3
update tbProduto
set quantidadeProduto = quantidadeProduto - 30
where codFornecedor = 1

--Exerc�cio 4
update tbCliente
set nomeCliente = 'Adriana Nogueira Silva Campos'
where codCliente = 5

--Exerc�cio 5
update tbVenda
set valorTotalVenda = valorTotalVenda - ((valorTotalVenda * 5)/100)
where dataVenda between '01/02/2014' and '01/03/2014'

--Exerc�cio 6
delete from tbItensVenda
where codProduto = 5

--Exerc�cio 7
update tbProduto
set valorProduto = valorProduto - ((valorProduto * 20)/100)
where quantidadeProduto > 1000

--Exerc�cio 8
update tbVenda
set valorTotalVenda = valorTotalVenda - ((valorTotalVenda * 20)/100)
where codCliente between 2 and 4

--Exerc�cio 9
update tbProduto
set valorProduto = valorProduto + ((valorProduto * 6)/100)
where codProduto = 5

--Exerc�cio 10
update tbVenda
set valorTotalVenda = valorTotalVenda + ((valorTotalVenda * 2)/100)
where dataVenda between '01/02/2014' and '01/03/2014'


