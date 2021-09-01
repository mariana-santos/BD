CREATE DATABASE bdRecursosHumanos
GO
USE bdRecursosHumanos

CREATE TABLE tbDepartamento(
codDepartamento int primary key identity (1,1)
,nomeDepartamento varchar (30)
)

CREATE TABLE tbFuncionario(
codFuncionario int primary key identity (1,1)
,nomeFuncionario varchar (30)
,cpfFuncionario varchar (15)
,sexoFuncionario char (1)
,dataNascimentoFuncionario date
,salarioFuncionario smallmoney
,codDepartamento int foreign key references tbDepartamento(codDepartamento)
)

CREATE TABLE tbDependente(
codDependente int primary key identity (1,1)
,nomeDependente varchar (30)
,dataNascimentoDependente date
,sexoDependente char (1)
,codFuncionario int foreign key references tbFuncionario (codFuncionario)
)