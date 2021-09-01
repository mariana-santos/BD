use bdEscola2

    insert into tbAluno(nomeAluno, dataNascAluno, rgAluno, cpfAluno, cidadeAluno, numeroAluno, logradouroAluno, cepAluno, bairroAluno, complementoAluno)
        values('Jailson Silva', '2000/03/10', '82.282.122-0', '535.092.285-07', 'São Paulo', 23, 'R. david Avenidas', '08830-590', 'Jd. Narcóticos', 'Ap25 - Bl01')
        ,('Ribamar da Gloria', '1999/10/03', '45.233.123-0', '100.200.300-40', 'São Paulo', 30, 'Av. das Ruas', '09030-570', 'Jd. da Hornet', null)
        ,('Mr Catra', '1998/04/04', '23.533.211-9', '450.092.275-80', 'Suzano', 20, 'R. das Subidas', '65478-195', 'Jd. dos piauienses', null)
        ,('Magali Souza', '1995/09/09', '34.221.111-x', '525.555.875-07', 'China', 24, 'Av. das Depressao', '53492-530', 'Bela Vista daqui', 'Ap95 - Bl07')
        ,('Selma Almeida', '2001/10/10', '54,222,122-9', '455.392.285-10', 'Santo André', 31, 'R. Alvejante', '23174-990', 'Brooklin Anonymous', null)
        ,('Debora Castro', '2003/10/11', '24,402,454-9', '555.092.585-11', 'Diadema', 02, 'R. das Glórias', '51971-290', 'Aricanduva uva uva', 'Ap02 - Bl03')
        ,('Tavao Melo', '2001/10/08', '88.365.012-3', '355.078.255-25', 'Santos', 01, 'Av. Alemeda', '08030-590', 'que Penha', null)
        select * from tbAluno

    insert into tbCurso(nomeCurso, valorCurso, cargaHorariaCurso)
        values('Inglês', 356.00, 3500)
        ,('Alemão', 478.00, 5000)
        ,('Espanhol', 500.00, 4000)
        select * from tbCurso

    insert into tbNivel(descricaoNivel)
        values('A1'), ('A2'), ('B1'), ('B2'), ('C1'), ('C2')
        select * from tbNivel

    insert into tbPeriodo(descricaoPeriodo)
        values('1º'), ('2º'), ('3º')
        select * from tbPeriodo

    insert into tbTurma(descricaoTurma, codCurso, horarioTurma, codPeriodo, codNivel, diaDaSemanaTurma)
        values('1|A', 1, '12:00:00', 2, 4, 'Segunda-Feira')
        ,('1|C', 3, '18:00:00', 3, 5, 'Quarta-Feira')
        ,('1|B', 1, '18:00:00', 1, 3, 'Sábado')
        ,('1|AA', 2, '19:00:00', 1, 2, 'Segunda-Feira')
        select * from tbTurma

    insert into tbMatricula(dataMatricula, codAluno, codTurma)
        values('2015/10/03', 1, 1)
        ,('2014/05/04', 2, 1)
        ,('2014/05/04', 2, 4)
        ,('2012/05/03', 3, 2)
        ,('2016/03/03', 1, 3)
        ,('2015/05/07', 4, 2)
        ,('2015/07/05', 4, 3)
        select * from tbMatricula

    insert into tbTelefoneAluno(codAluno, numTelAluno)
        values(1, '9 5764 8755')
        ,(2, '9 5544 3365')
        ,(3, '9 2619 6993')
        ,(4, '9 0002 8922')
        ,(5, '9 5438 1854')
        ,(6, '9 1234 5678')
        ,(7, '9 3219 6974')
        select * from tbTelefoneAluno