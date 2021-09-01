use bdEscola
go

insert into tbCurso (nomeCurso, cargahorariaCurso, valorCurso)
values
('Inglês', 2000, '356.00')
,('Alemão', 3000, '478.00')
,('Espanhol', 4000, '500.00')

SELECT * FROM tbCurso

insert into tbAluno (nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno, cpfAluno)
values
('Paulo Santos', '03/10/2000', '82.292.122-0', 'SP', '1234567890')
,('Maria da Glória', '10/03/1999', '45.233.123-0', 'SP', '2245678990')
,('Pedro Nogueira Silva', '04/04/1998', '23.533.211-9', 'SP', '2347678990')
,('Gilson Barros Silva', '09/09/1995', '34.221..111-x', 'PE', '2345674990')
,('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ', '2343678990')
,('Alessandro Pereira', '10/11/2003', '54.402.454-9', 'ES', '2345676990')
,('Aline Melo', '10/08/2001', '88.365.012-3', 'RJ', '2045678990')

SELECT * FROM tbAluno

INSERT INTO tbTurma (nomeTurma, codCurso, horarioTurma)
VALUES
('1|A', 1, '12:00:00')
,('1|B', 1, '18:00:00')
,('1|C', 3, '18:00:00')
,('1AA', 2, '19:00:00')

SELECT * FROM tbTurma

INSERT INTO tbMatricula (dataMatricula, codAluno, codTurma)
VALUES
('10/03/2015', 1, 1)
,('05/04/2014', 2, 1)
,('05/04/2014', 2, 4)
,('03/05/2012', 3, 2)
,('03/03/2016', 1, 3)
,('05/07/2015', 4, 2)
,('07/05/2015', 4, 3)

SELECT * FROM tbMatricula

