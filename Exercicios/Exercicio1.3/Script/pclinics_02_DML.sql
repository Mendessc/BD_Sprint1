USE PCLINICS;
GO

INSERT INTO CLINICA (nomeClinica)
VALUES ('PETS');
GO

INSERT INTO DONO (nomeDono)
VALUES ('SAULO'), ('LUCAS'), ('PAULO');
GO

INSERT INTO VETERINARIO(nomeVeterinario)
VALUES ('JORGE'), ('RAUL'), ('LARISSA');
GO

INSERT INTO TIPOPET (nomeEspecie)
VALUES ('CACHORRO'), ('GATO');
GO

INSERT INTO RACA (idTipoPet, nomeRaca)
VALUES (1, 'BULL-TERRIER'), (1, 'PITBULL'), (2, 'SIAM?S');
GO

INSERT INTO PET(idRaca, idDono, nomePet)
VALUES (1, 2, 'FLASH'),
(2, 1, 'BOB'),
(3, 3, 'LUPI');
GO

INSERT INTO ATENDIMENTO (idVet, idPet, dataAtendimento)
VALUES (2, 3, '09/08/2021'),
(1, 2, '10/08/2021'),
(3, 1, '11/08/2021');
GO
