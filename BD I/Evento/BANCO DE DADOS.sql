CREATE DATABASE bdEvento 
GO 
USE bdEscola 
CREATE TABLE tbConfirmacao( 
codConfirmacao INT PRIMARY KEY IDENTITY (1,1) 
,dtConfirmacao DATE 
,nomeConvidado VARCHAR (30) 
,dnConvidado DATE 
,sexoConvidado CHAR (1) 
,statusConvidado VARCHAR (3) 
,emailConvidado VARCHAR (30) 
,foneConvidado VARCHAR (15) 
)
