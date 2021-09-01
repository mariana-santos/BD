USE bdRecursosHumanos
GO

INSERT INTO tbDepartamento(nomeDepartamento)
VALUES
('Administrativo')
,('Financeiro')
,('Operacional')
,('Contabilidade')
,('Auditoria')
,('Marketing')
,('Manutenção')
,('Atendimento ao cliente')
,('TI')
,('Financeiro')

INSERT INTO tbFuncionario (nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento)
VALUES
('Eduardo Camargo', '123456789-0', 'M', '25/02/1985', '2500.00', 6)
,('Érico Veriscimo', '888888888-8', 'M', '16/04/1983', '4395.98', 9)
,('Aline Mendonça', '111111111-1', 'F', '05/02/1989', '5700.76', 9)
,('Vanessa Ferraz', '222222222-2', 'F', '18/11/1981', '5689.87', 3)
,('Maíra Medeiros', '666666666-6', 'F', '07/10/1987', '3387.32', 2)

INSERT INTO tbDependente(nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario)
VALUES 
('Isadora Mendonça', '14/03/2012', 'F', 3)
,('Dudu Oliveira', '12/03/2015', 'M', 1)
,('Enzo Veriscimo', '15/07/2004', 'M', 2)
,('Bruna Camargo', '15/06/2000', 'F', 1)
,('Karen Ferraz', '02/11/2018', 'F', 4)

SELECT * FROM tbDepartamento
SELECT * FROM tbFuncionario
SELECT * FROM tbDependente


