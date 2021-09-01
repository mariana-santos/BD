use bdLojadeRoupa
update tbFabricante
set nomeFabricante = 'Turma da Malha'
where codFabricante = 3

update tbVenda
set totalVenda -= totalVenda*10/100
where codCliente = 1

update tbProduto
set precoProduto += precoProduto*20/100
where codFabricante = 2

delete from tbItensVenda
where codItensVenda = 7

delete from tbItensVenda
where codVenda = 3

--delete from tbVendedor
--where codVendedor = 1
--Esse comando não deu certo, segundo o erro:
--A instrução DELETE conflitou com a restrição do REFERENCE "FK__tbVenda__codVend__1A14E395". 
--O conflito ocorreu no banco de dados "bdLojadeRoupa", tabela "dbo.tbVenda", column 'codVendedor'.