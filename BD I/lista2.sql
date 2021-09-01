create database bdEstoque
go 
use bdEstoque 
create table tbFabricante (
codFabricante int primary key identity (1,1)
,nomeFabricante varchar (15)
)
create table tbFornecedor (
codFornecedor int primary key identity (1,1)
,nomeFornecedor varchar (30)
,contatoFornecedor varchar (30)
)
create table tbCliente (
codCliente int primary key identity (1,1)
,nomeCliente varchar (30)
,cpfCliente varchar (15)
,emailCliente varchar (30)
,sexoCliente varchar (1)
,dataNascCliente date
)
create table tbProduto (
codProduto int primary key identity (1,1)
,descProduto varchar (50)
,valorProduto smallmoney 
,qtdProduto int
,codFabricante int foreign key references tbFabricante (codFabricante)
,codFornecedor int foreign key references tbFornecedor (codFornecedor)
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
,codProduto int foreign key references tbProduto (codProduto)
,qtdItensVenda int
,subTotalItensVenda smallmoney
)
