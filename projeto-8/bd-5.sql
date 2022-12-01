CREATE DATABASE projeto10;
USE projeto10;

CREATE TABLE Cadastro_clientes
(
	CPF	VARCHAR(10) PRIMARY KEY,
	Nome VARCHAR(50) UNIQUE,
	RegistroQtd INT NOT NULL DEFAULT 0
);

INSERT INTO Cadastro_clientes VALUES ('0123456789', 'Khadidja Moraes', 1);
INSERT INTO Cadastro_clientes VALUES ('9876543210', 'Júlia Holanda', 1);
INSERT INTO Cadastro_clientes VALUES ('0011223344', 'Cláudio Khaju', 1);

SELECT SUM(RegistroQtd) FROM Cadastro_clientes;
