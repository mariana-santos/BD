CREATE DATABASE bdTransito
GO 
USE bdTransito

CREATE TABLE tbMotorista(
idMotorista int primary key identity (1,1)
,nomeMotorista varchar (30)
,dataNascimentoMotorista date
,cpfMotorista varchar (15)
,CNHMotorista varchar (15)
,pontuacaoAcumuluda int
)
CREATE TABLE tbVeiculo(
idVeiculo int primary key identity (1,1)
,modeloVeiculo varchar (15)
,placaVeiculo varchar (7)
,renavam varchar (11)
,anoVeiculo INT
,idMotorista INT FOREIGN KEY REFERENCES tbMotorista (idMotorista)
)
CREATE TABLE tbMulta(
idMulta INT PRIMARY KEY IDENTITY (1,1)
,dataMulta DATE
,horaMulta TIME
,pontosMulta INT 
,idVeiculo INT FOREIGN KEY  REFERENCES tbVeiculo (idVeiculo)
)