create database bdClinicadeEstetica
go
use bdClinicadeEstetica
create table tbTipoTratamento(
codTipoTratamento int primary key identity (1,1) 
,nomeTipoTratamento varchar (15)
,valorTipoTratamento smallmoney 
,duracaoTipoTratamento varchar (10)
)
create table tbSexo(
codSexo int primary key identity (1,1)
,descSexo varchar (15)
)
create table tbCliente(
codCliente int primary key identity (1,1)
,nomeCliente varchar (30)
,dataNascCliente smalldatetime
,codSexo int foreign key references tbSexo(codSexo)
,pesoCliente real
,alturaCliente real
,cidadeCliente varchar (15)
,cepCliente varchar (20)
,ruaCliente varchar (50)
,numrua int
)
create table tbTelefone(
codTelefone int primary key identity (1,1)
,numTelefone varchar (12)
,codCliente int foreign key references tbCliente (codCliente)
)
create table tbComanda(
codComanda int primary key identity (1,1)
,codCliente int foreign key references tbCliente (codCliente)
,valorTotal smallmoney
)
create table tbTipoPag(
codTipoPag int primary key identity (1,1)
,descTipoPag varchar (15)
)
create table tbTratCliente(
codTratCliente int primary key identity (1,1)
,codTipoTratamento int foreign key references tbTipoTratamento(codTipoTratamento)
,codCliente int foreign key references tbCliente (codCliente)
)
create table tbComandaTrat(
codComandatrat int primary key identity (1,1)
,codTipoTratamento int foreign key references tbTipoTratamento (codTipoTratamento)
,codComanda int foreign key references tbComanda (codComanda)
)
create table tbComandaPag(
codComandaPag int primary key identity (1,1)
,codComanda int foreign key references tbComanda (codComanda)
,codTipoPag int foreign key references tbTipoPag (codTipoPag)
)