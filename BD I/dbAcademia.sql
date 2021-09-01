create database dbAcademia
go
use dbAcademia
create table tbTelefone(
codTelefone int primary key identity (1, 1)
,numTelefone varchar (13)
)
create table tbTipoPlano (
codTipoPlano int primary key identity (1,1)
,descTipoPlano varchar (15)
)
create table tbHorario(
codHorario int primary key identity (1,1)
,descHorario varchar (4)
)
create table tbAluno(
codAluno int primary key identity (1,1)
,nomeAluno varchar (30)
,cpfAluno varchar (15)
,rgAluno varchar (15)
,codTelefone int foreign key references tbTelefone(codTelefone)
,nomeruaAluno varchar (50)
,cepAluno varchar (9)
,cidadeAluno varchar (15)
,numeroruaAluno varchar (5)
)
create table tbProfessor(
codProfessor int primary key identity (1,1)
,nomeProfessor varchar (30)
,codTelefone int foreign key references tbTelefone (codTelefone) 
)
create table tbModalidade(
codModalidade int primary key identity (1,1)
,nomeModalidade varchar (15)
,codProfessor int foreign key references tbProfessor (codProfessor)
)
create table tbMatricula(
codMatricula int primary key identity (1,1)
,codAluno int foreign key references tbAluno (codAluno)
,codTipoPlano int foreign key references tbTipoPlano(codTipoPlano)
,codModalidade int foreign key references tbModalidade (codModalidade)
)
create table tbModMatricula(
codModMatricula int primary key identity (1,1)
,codModalidade int foreign key references tbModalidade(codModalidade)
,codMatricula int foreign key references tbMatricula (codMatricula)
)
create table tbModHorario(
codModHorario int primary key identity (1,1)
,codModalidade int foreign key references tbModalidade (codModalidade)
,codHorario int foreign key references tbHorario(codHorario)
)