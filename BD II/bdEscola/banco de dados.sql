create database bdEscola 
go 
use bdEscola

create table tbCurso (
codCurso int primary key identity (1,1)
,nomeCurso varchar (15) not null
,cargahorariaCurso int
,valorCurso smallmoney
)
create table tbTurma (
codTurma int primary key identity (1,1)
,nomeTurma varchar (15) not null
,horarioTurma smalldatetime 
,codCurso int foreign key references tbCurso(codCurso)
) 
create table tbAluno (
codAluno int primary key identity (1,1)
,nomeAluno varchar (30) not null
,dataNascimentoAluno smalldatetime 
,rgAluno varchar (15) not null
,naturalidadeAluno varchar(2) not null
,cpfAluno varchar (15) not null
)
create table tbMatricula (
codMatricula int primary key identity (1,1)
,dataMatricula smalldatetime 
,codAluno int foreign key references tbAluno(codAluno)
,codTurma int foreign key references tbTurma (codTurma)
)