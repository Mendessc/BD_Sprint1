USE PCLINICS;
GO

SELECT * FROM CLINICA
SELECT * FROM DONO
SELECT * FROM VETERINARIO
SELECT * FROM TIPOPET
SELECT * FROM RACA
SELECT * FROM PET
SELECT * FROM ATENDIMENTO

--listar todas as raças que começam com a letra S

/*
listar todos os tipos de pet que terminam com a letra O
*/
SELECT nomeEspecie FROM TIPOPET
WHERE nomeEspecie LIKE '%o'

/*
listar todos os pets mostrando os nomes dos seus donos
*/
SELECT nomePet, nomeDono FROM PET
LEFT JOIN DONO
ON PET.idDono = DONO.idDono

/*
listar todos os atendimentos mostrando o nome do veterinário que atendeu,
o nome, a raça e o tipo do pet que foi atendido,
o nome do dono do pet e o nome da clínica onde o pet foi atendido
*/
SELECT nomeVeterinario, nomePet, nomeEspecie, nomeRaca , nomeDono, nomeClinica FROM ATENDIMENTO
LEFT JOIN VETERINARIO
ON ATENDIMENTO.idVet = VETERINARIO.idVet
LEFT JOIN PET
ON ATENDIMENTO.idPet = PET.idPet
LEFT JOIN RACA
ON PET.idRaca = RACA.idRaca
LEFT JOIN TIPOPET
ON RACA.idTipoPet = TIPOPET.idTipoPet
LEFT JOIN DONO
ON PET.idDono = DONO.idDono
LEFT JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica
