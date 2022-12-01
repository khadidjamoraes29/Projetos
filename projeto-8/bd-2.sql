create database projeto7;
use projeto7;

CREATE TABLE Alunos(
  Nome varchar(50) NULL
);

CREATE TABLE Professores(
	Nome varchar(50) NULL
);

INSERT INTO Alunos VALUES('Khadidja');
INSERT INTO Alunos VALUES('Júlia');
INSERT INTO Alunos VALUES('Guilherme');
INSERT INTO Alunos VALUES('Maicon');

INSERT INTO Professores VALUES('Cleyton');
INSERT INTO Professores VALUES('Maicon');

SELECT a.Nome, b.Nome
FROM Alunos as A
INNER JOIN Professores as B
                on a.Nome = b.Nome;
                
SELECT a.Nome, b.Nome
FROM Alunos as A
LEFT JOIN Professores as B
                on a.Nome = b.Nome;

SELECT a.Nome, b.Nome
FROM Alunos as A
RIGHT JOIN Professores as B
	on a.Nome = b.Nome;
    
SELECT a.Nome, b.Nome
FROM Alunos as A
LEFT OUTER JOIN Professores as B 
ON a.Nome = b.Nome
UNION
SELECT a.Nome, b.Nome
FROM Alunos as A
RIGHT OUTER JOIN Professores as B  
ON a.Nome = b.Nome;