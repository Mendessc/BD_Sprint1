USE SENAI_HROADS_TARDE;
GO

INSERT INTO CLASSE (nomeClasse)
VALUES ('B?RBARO'), ('CRUZADO'), ('CA?ADORA DE DEM?NIOS'),
('MONGE'), ('NECROMANTE'), ('FEITICEIRO'), ('ARCANISTA');
GO

INSERT INTO TIPOHABILIDADE (nomeTipo)
VALUES ('ATAQUE'), ('DEFESA'), ('CURA'), ('MAGIA');
GO

INSERT INTO HABILIDADE(idTipo,nomeHabilidade)
VALUES (1, 'LAN?A MORTAL'), (2, 'ESCUDO SUPREMO'), (3, 'RECUPERAR VIDA')
GO

INSERT INTO RELACAO(idClasse,idHabilidade)
VALUES (1,1),(1,2),(2,2),(3,1),(4,2),(4,3),(5,null),(6,3),(7,null)
GO

INSERT INTO PERSONAGEM (idClasse,nome,maxVida,maxMana,dataAtt,dataCriacao)
VALUES (1,'DeuBug',100,80,'10/08/2021','18/01/2019'),
(4,'BitBug',70,100,'10/08/2021','17/03/2016'),
(7,'Fer8',75,60,'10/08/2021','18/03/2018');
GO

UPDATE PERSONAGEM SET nome = 'Fer7'
WHERE idPersonagem = 3

UPDATE CLASSE SET nomeClasse = 'NECROMANCER'
WHERE idClasse = 5
