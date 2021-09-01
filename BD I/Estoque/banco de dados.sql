create database bdEstoque
go
use bdEstoque
create table tbCliente(
codCliente int primary key identity (1,1)
,nomeCliente varchar (30)
,cpfCliente varchar (18)
,emailCliente varchar (30)
,sexoCliente char (1)
,dataNascimentoCliente smalldatetime
)
create table tbFornecedor(
codFornecedor int primary key identity (1,1)
,nomeFornecedor varchar (30)
,contatoFornecedor varchar (30)
)
create table tbFabricante(
codFabricante int primary key identity (1,1)
,nomeFabricante varchar (15)
)
create table tbProduto(
codProduto int primary key identity (1,1)
,descricaoProduto varchar (100)
,valorProduto smallmoney
,quantidadeProduto int
,codFabricante int foreign key references tbFabricante (codFabricante)
,codFornecedor int foreign key references tbFornecedor(codFornecedor)
)
create table tbVenda(
codVenda int primary key identity (1,1)
,dataVenda date
,valorTotalVenda smallmoney
,codCliente int foreign key references tbCliente (codCliente)
)
create table tbItensVenda(
codItensVenda int primary key identity (1,1)
,codVenda int foreign key references tbVenda (codVenda)
,codProduto int foreign key references tbProduto(codProduto)
,quantidadeItensVenda int
,subTotalItensVenda smallmoney
)