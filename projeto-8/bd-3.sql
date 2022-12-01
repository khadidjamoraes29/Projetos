create database projeto8;
use projeto8;

CREATE TABLE Carros_Vendas
(
	Referencia	VARCHAR(3) PRIMARY KEY,
	Nome_Carro	VARCHAR(50) UNIQUE,
    Marca	VARCHAR(50) UNIQUE,
	Estoque	INT NOT NULL DEFAULT 0
);

INSERT INTO Carros_Vendas VALUES ('001', 'Spin', 'Chevrolet', 15);
INSERT INTO Carros_Vendas VALUES ('002', 'Fusca', 'Volkswagen' , 12);
INSERT INTO Carros_Vendas VALUES ('003', 'Fiat 500', 'Fiat' , 7);

CREATE TABLE ItensVenda
(
	Venda INT,
	Produto	VARCHAR(3),
	Quantidade	INT
);

DELIMITER $

CREATE TRIGGER Tgr_ItensVenda_Insert AFTER INSERT
ON ItensVenda
FOR EACH ROW
BEGIN
	UPDATE Carros_Vendas SET Estoque = Estoque - NEW.Quantidade
WHERE Referencia = NEW.Produto;
END$

CREATE TRIGGER Tgr_ItensVenda_Delete AFTER DELETE
ON ItensVenda
FOR EACH ROW
BEGIN
	UPDATE Carros_Vendas SET Estoque = Estoque + OLD.Quantidade
WHERE Referencia = OLD.Produto;
END$

DELIMITER ;

INSERT INTO ItensVenda VALUES (1, '001', 2);
DELETE FROM ItensVenda WHERE Venda = 1 AND Produto = '001';
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Carros_vendas;
SELECT * FROM ItensVenda;