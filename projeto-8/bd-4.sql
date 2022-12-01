create database projeto9;
use projeto9;

CREATE TABLE Produtos
(
	Referencia	VARCHAR(3) PRIMARY KEY,
	Produto	VARCHAR(50) UNIQUE,
    Marca	VARCHAR(50) UNIQUE,
	Estoque	INT NOT NULL DEFAULT 0
);

INSERT INTO Produtos VALUES ('001', 'Goma de mascar', 'Chiclet', 15);
INSERT INTO Produtos VALUES ('002', 'Desodorante', 'Nívea' , 12);
INSERT INTO Produtos VALUES ('003', 'Leite condensado', 'Nestlé' , 7);

CREATE TABLE ItensVenda
(
	Venda INT,
	Produto VARCHAR(3),
	Quantidade	INT
);

DELIMITER $

CREATE TRIGGER Tgr_ItensVenda_Insert AFTER INSERT
ON ItensVenda
FOR EACH ROW
BEGIN
	UPDATE Produtos SET Estoque = Estoque - NEW.Quantidade
WHERE Referencia = NEW.Produto;
END$

CREATE TRIGGER Tgr_ItensVenda_Delete AFTER DELETE
ON ItensVenda
FOR EACH ROW
BEGIN
	UPDATE Produtos SET Estoque = Estoque + OLD.Quantidade
WHERE Referencia = OLD.Produto;
END$

CREATE PROCEDURE proc()
 BEGIN 
 SELECT * FROM ItensVenda;
 END$
DELIMITER ;

SET SQL_SAFE_UPDATES = 0;
INSERT INTO ItensVenda VALUES (1, '001', 2);
INSERT INTO ItensVenda VALUES (2, '003', 5);
DELETE FROM ItensVenda WHERE Venda = 1 AND Produto = '001';
CALL proc();