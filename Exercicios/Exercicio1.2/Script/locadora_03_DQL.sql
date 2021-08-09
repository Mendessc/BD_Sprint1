USE LOCADORA;
GO

SELECT * FROM EMPRESA
SELECT * FROM CLIENTE
SELECT * FROM MARCA
SELECT * FROM MODELO
SELECT * FROM VEICULO
SELECT * FROM ALUGUEL

/*
 listar todos os alugueis mostrando as datas de início e fim,
 o nome do cliente que alugou e nome do modelo do carro
*/

SELECT nomeCliente, nomeModelo, dataRetirada, dataDevolucao FROM ALUGUEL
LEFT JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
LEFT JOIN VEICULO
ON VEICULO.idVeiculo = ALUGUEL.idVeiculo
LEFT JOIN MODELO
ON MODELO.idModelo = VEICULO.idModelo
GO

/*
listar os alugueis de um determinado cliente mostrando seu nome,
as datas de início e fim e o nome do modelo do carro
*/

SELECT nomeCliente, nomeModelo, dataAluguel, dataDevolucao FROM ALUGUEL
RIGHT JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
LEFT JOIN VEICULO
ON VEICULO.idVeiculo = ALUGUEL.idVeiculo
LEFT JOIN MODELO
ON MODELO.idModelo = VEICULO.idModelo
GO