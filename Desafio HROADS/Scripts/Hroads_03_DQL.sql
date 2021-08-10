USE SENAI_HROADS_TARDE;
GO
--Selecionar todos os personagens;
SELECT * FROM PERSONAGEM

--Selecionar todos as classes;
SELECT * FROM CLASSE

--Selecionar somente o nome das classes;
SELECT nomeClasse FROM CLASSE

--Selecionar todas as habilidades;
SELECT * FROM HABILIDADE

--Realizar a contagem de quantas habilidades estão cadastradas;
SELECT COUNT(*) FROM HABILIDADE

--Selecionar somente os id’s das habilidades classificando-os por ordem crescente;
SELECT idHabilidade FROM HABILIDADE ORDER BY idHabilidade

--Selecionar todos os tipos de habilidades;
SELECT * FROM TIPOHABILIDADE

--Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
SELECT idHabilidade,nomeHabilidade,nomeTipo FROM HABILIDADE
LEFT JOIN TIPOHABILIDADE
ON HABILIDADE.idHabilidade = TIPOHABILIDADE.idTipo;

--Selecionar todos os personagens e suas respectivas classes;
SELECT nome,nomeClasse FROM PERSONAGEM
LEFT JOIN CLASSE
ON PERSONAGEM.idPersonagem = CLASSE.idClasse;

--Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);
SELECT nomeClasse,nome FROM CLASSE
LEFT JOIN PERSONAGEM
ON CLASSE.idClasse = PERSONAGEM.idPersonagem;

--Selecionar todas as classes e suas respectivas habilidades;
SELECT nomeClasse,nomeHabilidade FROM CLASSE
INNER JOIN RELACAO
ON CLASSE.idClasse = RELACAO.idClasse
FULL OUTER JOIN HABILIDADE
ON RELACAO.idHabilidade = HABILIDADE.idHabilidade;

--Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT nomeClasse,nomeHabilidade FROM CLASSE
INNER JOIN RELACAO
ON CLASSE.idClasse = RELACAO.idClasse
INNER JOIN HABILIDADE
ON RELACAO.idHabilidade = HABILIDADE.idHabilidade;

--Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT nomeClasse,nomeHabilidade FROM CLASSE
INNER JOIN RELACAO
ON CLASSE.idClasse = RELACAO.idClasse
FULL OUTER JOIN HABILIDADE
ON RELACAO.idHabilidade = HABILIDADE.idHabilidade;

