USE OPTUS;
GO

INSERT INTO TIPOUSUARIO (tipo)
VALUES ('COMUM'), ('ADMINISTRADOR');
GO

INSERT INTO ESTILO (tipoEstilo)
VALUES ('ROCK'), ('FOLK'), ('RAP'), ('FUNK');
GO

INSERT INTO USUARIO (idTipoUsuario, email, nome, senha)
VALUES (1, 'novoemail.email.com', 'LUCAS', '123456789'),
(2, 'velhoemail.email.com', 'SAULO', '101010');
GO

INSERT INTO ALBUM (idUsuario, idEstilo, artista, dataLancamento)
VALUES (1, 3, 'SID', '10/10/2021')
GO