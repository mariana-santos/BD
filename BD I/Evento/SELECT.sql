USE bdEvento
GO

--Exercício 01--
SELECT nomeConvidado, dnConvidado from bdEvento.dbo.tbConfirmacao

--Exercício 02--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE codConfirmacao > 5

--Exercício 03--
SELECT nomeConvidado, sexoConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE sexoConvidado LIKE 'M'

--Exercício 04--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE codConfirmacao >= 2 AND codConfirmacao <= 5

--eXERCÍCIO 05--
SELECT * FROM tbConfirmacao
ORDER BY nomeConvidado ASC

--Exercício 06--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE dnConvidado LIKE '08/02/1981'

--Exercício 07--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE sexoConvidado LIKE 'F' AND statusConvidado LIKE 'NÃO'

--Exercício 08--
SELECT nomeConvidado, sexoConvidado, statusConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE nomeConvidado LIKE 'A%'

--Exercício 09--
SELECT COUNT (statusConvidado) as 'Qtd que vai' FROM bdEvento.dbo.tbConfirmacao
WHERE statusConvidado LIKE 'SIM'

--Exercício 10--
SELECT COUNT (statusConvidado) AS 'Qtd que não vai'FROM bdEvento.dbo.tbConfirmacao
WHERE statusConvidado LIKE 'NÃO'

--Exercício 11-
SELECT * FROM tbConfirmacao
ORDER BY dtConfirmacao DESC

--Exercício 12--
SELECT COUNT (dnConvidado) AS 'Convidados menores de idade' FROM bdEvento.dbo.tbConfirmacao
WHERE dnConvidado > '29/10/2001'

