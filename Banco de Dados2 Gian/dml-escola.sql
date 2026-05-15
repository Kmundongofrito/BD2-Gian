
CREATE DATABASE EscolaDB;

USE EscolaDB;

-- DROP TABLE Alunos;

CREATE TABLE Alunos (
	Id INT IDENTITY(1,1),
	Idade INT,
	Nome VARCHAR(200) NOT NULL,
	Email VARCHAR(200) UNIQUE
);

INSERT INTO Alunos (Nome, Idade, Email)
	VALUES ('Gian', 18, 'gianemolo@email.com');

INSERT INTO Alunos (Nome, Idade, Email)
	VALUES 
		('Camilla', 17, 'Milla@email.com'),
		('Livia', 23, 'Livs@email.com')
;

-- tomar cuidado ao realizar UPDATE
-- UPDATE Alunos
--	SET Idade = 19;

-- UPDATE Alunos
-- 	SET Idade = 17
--	WHERE Nome = 'Camilla'
--;

UPDATE Alunos
	SET Idade = 18
	WHERE Nome = 'Camilla'
;

INSERT INTO Alunos (Nome, Idade, Email)
	VALUES 
		('Camilla', 18, 'Milla2@email.com')
;

UPDATE Alunos
	SET Idade = 24
	WHERE Nome = 'Livia'
;

UPDATE Alunos
	SET Idade = 19
	WHERE Id = 4
;

UPDATE Alunos
	SET Idade = 19
		Email = 'Milla2@email.com'
	WHERE Id = 2
;

DELETE FROM Alunos
	WHERE Id = 1
;

