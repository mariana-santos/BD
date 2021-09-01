create database bdEscola2
go

use bdEscola2

	create table tbAluno(
		codAluno int primary key identity(1,1)
		,nomeAluno varchar(35) not null
		,dataNascAluno date not null
		,rgAluno varchar(20) not null
		,cpfAluno varchar(20) not null
		,cidadeAluno varchar(30) not null
		,numeroAluno int not null
		,logradouroAluno varchar(30) not null
		,cepAluno varchar(30) not null
		,bairroAluno varchar(30) not null
		,complementoAluno varchar(30)
	)

	create table tbTelefoneAluno(
		codTelAluno int primary key identity(1,1)
		,numTelAluno varchar(15) not null
		,codAluno int foreign key references tbAluno(codAluno)
	)

	create table tbCurso(
		codCurso int primary key identity(1,1)
		,nomeCurso varchar(20) not null
		,valorCurso smallint not null
		,cargaHorariaCurso smallint not null
	)

	create table tbNivel(
		codNivel int primary key identity(1,1)
		,descricaoNivel varchar(15) not null
	)

	create table tbPeriodo(
		codPeriodo int primary key identity(1,1)
		,descricaoPeriodo varchar(15) not null
	)

	create table tbTurma(
		codTurma int primary key identity(1,1)
		,codCurso int foreign key references tbCurso(codCurso)
		,descricaoTurma varchar(10) not null
		,horarioTurma time not null
		,diaDaSemanaTurma varchar (15) not null
		,codPeriodo int foreign key references tbPeriodo(codPeriodo)
		,codNivel int foreign key references tbNivel(codNivel)
	)

	create table tbMatricula(
		codMatricula int primary key identity(1,1)
		,codAluno int foreign key references tbAluno(codAluno)
		,codTurma int foreign key references tbTurma(codTurma)
		,dataMatricula date not null
	)