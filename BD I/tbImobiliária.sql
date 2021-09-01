create database dbImobiliaria
go
use dbImobiliaria
create table tbTelefone(
codTelefone int primary key identity (1,1)
,numTelefone int not null
)
create table tbTipoImovel(
codTipoImovel int primary key identity (1,1)
,descTipoImovel varchar (15) not null
)
create table tbDisponibilidade (
codDisponibilidade int primary key identity (1,1)
,descDisponilidade varchar (3) not null
)
create table tbCliente(
codCliente int primary key identity (1,1)
,nomeCliente varchar (40) not null
,RGcliente varchar (14) not null
,CPFcliente varchar (14) not null
,dataNascCliente smalldatetime not null
,
)