USE bdEvento
GO

--Exerc�cio 01--
SELECT nomeConvidado, dnConvidado from bdEvento.dbo.tbConfirmacao

--Exerc�cio 02--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE codConfirmacao > 5

--Exerc�cio 03--
SELECT nomeConvidado, sexoConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE sexoConvidado LIKE 'M'

--Exerc�cio 04--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE codConfirmacao >= 2 AND codConfirmacao <= 5

--eXERC�CIO 05--
SELECT * FROM tbConfirmacao
ORDER BY nomeConvidado ASC

--Exerc�cio 06--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE dnConvidado LIKE '08/02/1981'

--Exerc�cio 07--
SELECT dtConfirmacao, nomeConvidado, dnConvidado, sexoConvidado, statusConvidado, emailConvidado, foneConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE sexoConvidado LIKE 'F' AND statusConvidado LIKE 'N�O'

--Exerc�cio 08--
SELECT nomeConvidado, sexoConvidado, statusConvidado FROM bdEvento.dbo.tbConfirmacao
WHERE nomeConvidado LIKE 'A%'

--Exerc�cio 09--
SELECT COUNT (statusConvidado) as 'Qtd que vai' FROM bdEvento.dbo.tbConfirmacao
WHERE statusConvidado LIKE 'SIM'

--Exerc�cio 10--
SELECT COUNT (statusConvidado) AS 'Qtd que n�o vai'FROM bdEvento.dbo.tbConfirmacao
WHERE statusConvidado LIKE 'N�O'

--Exerc�cio 11-
SELECT * FROM tbConfirmacao
ORDER BY dtConfirmacao DESC

--Exerc�cio 12--
SELECT COUNT (dnConvidado) AS 'Convidados menores de idade' FROM bdEvento.dbo.tbConfirmacao
WHERE dnConvidado > '29/10/2001'

