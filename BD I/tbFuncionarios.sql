create database bdFuncionarios
go
use bdFuncionarios
create table tbDepto(
codDepto int primary key identity(1,1)
,nomeDepto varchar (30) not null
)
create table tbProjeto(
codProjeto int primary key identity (1,1)
,nomeProjeto varchar (30) not null
)
create table tbFuncionario(
codFuncionario int primary key identity (1,1)
,nomeFuncionario varchar (40) not null
,dnFuncionario smalldatetime not null
,salarioFuncionario smallmoney not null
,codDepto int foreign key references tbDepto (codDepto)
)
create table tbConjuge(
codConjuge int primary key identity(1,1)
,nomeConjuge varchar(40) not null
,codFuncionario int foreign key references tbFuncionario(codFuncionario)
)
create table tbFuncionarioProjeto(
codFuncionarioProjeto int primary key identity (1,1)
,codFuncionario int foreign key references tbFuncionario(codFuncionario)
,codProjeto int foreign key references tbProjeto(codProjeto)
, dataAlocacao smalldatetime not null
)


