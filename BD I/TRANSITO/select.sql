USE bdTransito
GO

--exerc a--
SELECT COUNT (idMotorista)  AS 'Qtd. motoristas' FROM tbMotorista

--exerc b--
SELECT COUNT (idMotorista)  AS 'Motoristas com Silva' FROM tbMotorista
WHERE nomeMotorista LIKE '%Silva'

--exerc c--
SELECT COUNT (idMotorista) AS 'motoristas q nasceram em 2000' From tbMotorista
WHERE dataNascimentoMotorista LIKE '%2000'

--exerc d
SELECT COUNT (idMotorista) AS 'motoristas com pontos>10' From tbMotorista
WHERE pontuacaoAcumuluda > 10

--exerc e
SELECT idMotorista, SUM (pontuacaoAcumuluda) as 'pontuação acumulada' From tbMotorista
group by (idMotorista)
order by idMotorista

--exerc F--
SELECT idMotorista, AVG (pontuacaoAcumuluda) From tbMotorista
group by (pontuacaoAcumuluda)
order by pontuacaoAcumuluda

--exerc G--
SELECT idMotorista, COUNT (idVeiculo) AS 'qtd carros' from tbVeiculo
where (idMotorista) = 1
group by (idMotorista)

--exerc h
select COUNT (idveiculo) AS 'placa começa com A' from tbVeiculo
where placaVeiculo like 'A'

--exerc i
select COUNT (idveiculo) AS 'veiculos de antes de 2010' from tbVeiculo
where anoVeiculo < 2010

--exerc j
select AVG (anoVeiculo)  as 'média anos' from tbVeiculo

--exerc k
SELECT COUNT (idveiculo) as 'qtd sedan' from tbVeiculo
where modeloVeiculo like 'Sedan'


--exerc t
select anoveiculo, count (idveiculo) as 'qtd veiculos esse ano' from tbVeiculo
group by anoVeiculo

--exerc u
select nomemotorista as 'nome', count (pontuacaoAcumuluda) as 'qtd motoristas por pontuação' from tbMotorista
group by nomeMotorista

--exerc v
select COUNT (idmotorista) as 'pontuação maior q 20' from tbMotorista
where pontuacaoAcumuluda > 20

--exerc w
select nomeMotorista as 'nome', AVG(pontuacaoAcumuluda) as 'média pontuação'from tbMotorista
where dataNascimentoMotorista like '%2000'
group by  nomeMotorista, pontuacaoAcumuluda
order by pontuacaoAcumuluda

--exerc x
select AVG (pontosMulta) as 'média de pontos' from tbMulta
where DATEPART ( month , dataMulta ) = 7 and  DATEPART ( YEAR , dataMulta ) = 2017

--EXERC Y
select COUNT (idveiculo) AS 'não circulam segunda' from tbVeiculo
where placaVeiculo like '%%%%%%1' or placaVeiculo like '%%%%%%2'