create database bdLojadeRoupa
go
use bdLojadeRoupa

create table tbFabricante(
codFabricante int primary key identity (1,1)
,nomeFabricante varchar (15) not null
)
create table tbVendedor(
codVendedor int primary key identity (1,1)
,nomeVendedor varchar (40) not null 
,idadeVendedor varchar (2)
)
create table tbCliente (
codCliente int primary key identity (1,1)
,nomeCliente varchar (40) not null
,idadeCliente varchar (2)
)
create table tbProduto (
codProduto int primary key identity (1,1)
,nomeProduto varchar (15)
,precoProduto smallmoney not null
,dataEntradaProduto smalldatetime
,codFabricante int foreign key references tbFabricante (codFabricante) not null
,qtdProduto int
)

create table tbVenda(
codVenda int primary key identity (1,1)
,dataVenda smalldatetime
,codCliente int foreign key references tbCliente (codCliente) not null
,codVendedor int foreign key references tbVendedor (codVendedor) not null
,totalVenda smallmoney
)

create table tbItensVenda(
codItensVenda int primary key identity (1,1)
,codVenda int foreign key references tbVenda (codVenda)
,codProduto int foreign key references tbProduto (codProduto)
,qtdItens varchar (3)
,subtotalItens smallmoney
)