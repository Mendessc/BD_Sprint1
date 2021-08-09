USE LOCADORA;
GO

INSERT INTO EMPRESA (nomeEmpresa)
VALUES ('UNIDAS'), ('MOTORS');
GO

INSERT INTO CLIENTE (nomeCliente)
VALUES ('LUCAS'),('SAULO');
GO

INSERT INTO MARCA (nomeMarca)
VALUES ('VW'), ('GM');
GO

INSERT INTO MODELO (idMarca, nomeModelo)
VALUES (1, 'CELTA'), (2, 'POLO');
GO

INSERT INTO VEICULO (idModelo, idEmpresa, placa)
VALUES (1, 1, 'EEE-888'), (2, 2, 'TTT-999');
GO

INSERT INTO ALUGUEL (idVeiculo, idCliente, dataAluguel, dataDevolucao)
VALUES (2, 1, '03/08/2021', '06/08/2021'),
(1, 2, '05/08/2021', '10/08/2021');
GO