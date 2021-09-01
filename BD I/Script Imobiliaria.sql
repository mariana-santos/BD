create database dbImobiliaria
go
use dbImobiliaria
create table tbTelefone (
codTelefone int primary key identity (1,1)
,numtelefone varchar (15) not null
)
create table tbTipoImovel(
codTipoImovel int primary key identity (1,1)
,descTipoImovel varchar (15) not null
)
create table tbDisponibilidade (
codDisponibilidade int primary key identity (1,1)
,descDisponibilidade varchar (15) not null
)
create table tbCliente (
codCliente int primary key identity (1,1) 
,nomeCliente varchar (40) not null
,RGcliente varchar (14) not null
,CPFcliente varchar (14) not null 
,dtNascCliente smalldatetime not null
,codTelefone int foreign key references tbTelefone (codTelefone)
)
create table tbFiador (
codFiador int primary key identity (1,1)
,nomeFiador varchar (40) not null
,RGfiador varchar (15) not null
,CPFfiador varchar (15) not null
,dtNascFiador smalldatetime not null
,codTelefone int foreign key references tbTelefone (codTelefone)
)
create table tbVendedor (
codVendedor int primary key identity (1,1)
,nomeVendedor varchar (40) not null
,RGvendedor varchar (15) not null
,CPFvendedor varchar (15) not null
,dtNascVendedor smalldatetime not null
,codTelefone int foreign key references tbTelefone (codTelefone)
)
create table tbProprietario (
codProprietario int primary key identity (1,1)
,nomeProprietario varchar (40) not null
,RGproprietario varchar (15) not null
,CPFproprietario varchar (15) not null
,dtNascProprietario smalldatetime not null
,codTelefone int foreign key references tbTelefone (codTelefone)
)
create table tbImovel (
codImovel int primary key identity (1,1)
,codTipoImovel int foreign key references tbTipoImovel (codTipoImovel)
,codDisponibilidade int foreign key references tbDisponibilidade (codDisponibilidade)
,codProprietario int foreign key references tbProprietario (codProprietario)
,valorImovel smallmoney not null
,CEPimovel varchar (20) not null
,cidadeImovel varchar (20) not null
,bairroImovel varchar (20)
,numImovel varchar (4) not null
,ruaImovel varchar (40)
,complementoImovel varchar (4)
)
create table tbLocacao(
codLocacao int primary key identity (1,1)
,codImovel int foreign key references tbImovel (codImovel)
,codCliente int foreign key references tbCliente (codCliente)
,codFiador int foreign key references tbFiador (codFiador)
,dtContrato smalldatetime not null
)
create table tbVenda (
codVenda int primary key identity (1,1)
,codCliente int foreign key references tbCliente (codCliente)
,codImovel int foreign key references tbImovel (codImovel)
,dtVenda smalldatetime not null
,codVendedor int foreign key references tbVendedor (codVendedor)
)