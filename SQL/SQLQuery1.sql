CREATE DATABASE VitaHealth;
GO

USE VitaHealth;
GO

CREATE TABLE tipoUsuario(
	idTipoUsuario INT PRIMARY KEY IDENTITY,
	tituloTipoUsuario VARCHAR(30) NOT NULL UNIQUE
);
GO

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY IDENTITY,
	idTipoUsuario INT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario),
	emailUsuario VARCHAR(100) NOT NULL UNIQUE,
	senhaUsuario VARCHAR(100) NOT NULL,
	nomeUsuario VARCHAR(100) NOT NULL
);

