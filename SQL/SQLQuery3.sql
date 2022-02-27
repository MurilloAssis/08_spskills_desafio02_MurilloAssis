USE VitaHealth;
GO

INSERT INTO tipoUsuario(tituloTipoUsuario)
VALUES ('Comum'), ('Adm');
GO

INSERT INTO usuario(idTipoUsuario, emailUsuario, senhaUsuario, nomeUsuario)
VALUES (1, 'comum@email.com', '1234', 'userComum'), (2, 'adm@email.com', '1234', 'userADM');
