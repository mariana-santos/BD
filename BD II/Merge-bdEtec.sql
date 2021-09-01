CREATE DATABASE bdEtec
GO

CREATE TABLE tbMtecA(
rmAluno INT PRIMARY KEY NOT NULL
,nomeAluno VARCHAR (50) NOT NULL
,statusAluno VARCHAR (9) CHECK(statusAluno IN ('APROVADO', 'REPROVADO')) NOT NULL
)

CREATE TABLE tbMtecB(
rmAluno INT PRIMARY KEY NOT NULL
,nomeAluno VARCHAR (50) NOT NULL
,statusAluno VARCHAR (9) CHECK(statusAluno IN ('APROVADO', 'REPROVADO')) NOT NULL
)

CREATE TABLE tb3ano(
rmAluno INT PRIMARY KEY NOT NULL
,nomeAluno VARCHAR (50) NOT NULL
,statusAluno VARCHAR (9) CHECK(statusAluno IN ('APROVADO', 'REPROVADO')) NOT NULL
)

INSERT INTO tbMtecA (rmAluno, nomeAluno, statusAluno) VALUES
(10, 'Camylly Ferreira Lima', 'APROVADO')
,(20, 'David Almeida Santos', 'APROVADO')
,(30, 'Samuel Guerra de Aquino', 'REPROVADO')
,(40, 'Ruy Barbosa', 'REPROVADO')
,(50, 'Vitória Gonçalves', 'APROVADO')
,(60, 'Nathan Santana', 'APROVADO')
,(70, 'Paulo Henrique', 'REPROVADO')
,(80, 'Juliana Gonzales', 'APROVADO')
,(90, 'Jackeline Pereira', 'APROVADO')
,(100, 'Mariana Santos F Sousa', 'APROVADO')

INSERT INTO tbMtecB (rmAluno, nomeAluno, statusAluno) VALUES
(110, 'Thainan', 'APROVADO')
,(120, 'Melissa', 'APROVADO')
,(130, 'Pedro Henrique', 'REPROVADO')
,(140, 'Gabriel', 'REPROVADO')
,(150, 'Amanda', 'APROVADO')
,(160, 'Vitão', 'APROVADO')
,(170, 'André', 'REPROVADO')
,(180, 'Icaro Henrique', 'APROVADO')
,(190, 'Jasmin', 'APROVADO')
,(200, 'Guilherme Menezes', 'APROVADO')

SELECT * FROM tbMtecB

MERGE tb3ano destino
	USING tbMtecA origem
	ON origem.rmAluno = destino.rmAluno
	WHEN NOT MATCHED AND origem.statusAluno LIKE 'APROVADO' THEN
	INSERT VALUES (origem.rmAluno, origem.nomeAluno, origem.statusAluno);

MERGE tb3ano destino
	USING tbMtecB origem
	ON origem.rmAluno = destino.rmAluno
	WHEN NOT MATCHED AND origem.statusAluno LIKE 'APROVADO' THEN
	INSERT VALUES (origem.rmAluno, origem.nomeAluno, origem.statusAluno);

	select * from tb3ano
