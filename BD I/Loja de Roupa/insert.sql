go
use bdLojadeRoupa
insert into tbFabricante (nomeFabricante)
values ('Malwee')
,('Marisol')
,('Cia da Malha')
select * from tbFabricante
insert into tbVendedor (nomeVendedor, idadeVendedor)
values ('Raquel Torres', '25')
,('João Santana', '19')
select * from tbVendedor
insert into tbCliente (nomeCliente, idadeCliente)
values ('Maria Silva', '19')
,('Vitória Gonçalves', '16')
,('Vinicius Amaral', '15')
,('Camylly Lima', '16')
,('Gabriely Brito', '16')
select * from tbCliente

insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFabricante)
values ('Vestido', 50, '2019-07-07', 1)
,('Camisa', 25, '2019/07/07', 1)
,('Bermuda', 20, '2019/07/07', 2)
,('Calça Jeans', 70, '2019-07-07', 2)
,('Tênis', 100, '2019/07/07', 3)
,('Short', 35, '2019/07/07', 3)

insert into tbVenda (dataVenda, codCliente, codVendedor, totalVenda)
values (2018-12-12, 1, 1, 125)
,(2019-07-07, 2, 1, 150)
,(2015-09-03, 3, 2, 170)
,(2016-08-08, 4, 2, 100)
,(2013-08-08, 5, 2, 160)

select * from tbProduto

insert into tbItensVenda (codVenda, codProduto, qtdItens, subtotalItens)
values 
(1, 1, '2', 100)
,(2, 2, '1', 25)
,(3, 3, '4', 80)
,(4, 4, '1', 70)
,(5, 5, '1', 100)
,(1, 6, '2', 70)
,(2, 1, '1', 50)
,(3, 2, '2', 50)
,(4, 3, '1', 20)
,(5,4, '2', 140)

select * from tbItensVenda
select * from tbVenda