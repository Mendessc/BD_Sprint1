CREATE DATABASE SENAI_HROADS_TARDE
GO

USE SENAI_HROADS_TARDE
GO

CREATE TABLE CLASSE(
idClasse SMALLINT PRIMARY KEY IDENTITY(1,1),
nomeClasse VARCHAR(20) NOT NULL
);
GO

CREATE TABLE TIPOHABILIDADE(
idTipo SMALLINT PRIMARY KEY IDENTITY(1,1),
nomeTipo VARCHAR (15) NOT NULL
);
GO

CREATE TABLE HABILIDADE(
idHabilidade SMALLINT PRIMARY KEY IDENTITY(1,1),
idTipo SMALLINT FOREIGN KEY REFERENCES TIPOHABILIDADE(idTipo),
nomeHabilidade VARCHAR(30) NOT NULL
);
GO

CREATE TABLE RELACAO(
idRelacao SMALLINT PRIMARY KEY IDENTITY(1,1),
idClasse SMALLINT FOREIGN KEY REFERENCES CLASSE(idClasse),
idHabilidade SMALLINT FOREIGN KEY REFERENCES HABILIDADE(idHabilidade)
);
GO

CREATE TABLE PERSONAGEM(
idPersonagem SMALLINT PRIMARY KEY IDENTITY(1,1),
idClasse SMALLINT FOREIGN KEY REFERENCES CLASSE(idClasse),
maxVida TINYINT NOT NULL,
maxMana TINYINT NOT NULL,
dataAtt DATE NOT NULL,
dataCriacao DATE NOT NULL
);
GO

ALTER TABLE PERSONAGEM
ADD nome VARCHAR(20) NOT NULL
GO