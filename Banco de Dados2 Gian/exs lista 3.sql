CREATE DATABASE EmpresaDB;

USE EmpresaDB;

CREATE TABLE Departamentos
(
Id INT PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR (100) NOT NULL UNIQUE,
DataCriacao DATE
);

CREATE TABLE Funcionarios 
(
Id INT PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR (100) NOT NULL,
Email VARCHAR (100) UNIQUE,
Salario DECIMAL (10,2),
DataAdmissao DATE,
IdDepartamentos INT NOT NULL,
constraint FK_Departamentos_Funcionarios
foreign key (IdDepartamentos)
references Departamentos (Id)
);

CREATE TABLE Projetos
(
Id INT PRIMARY KEY IDENTITY (1,1),
Nome VARCHAR (100) NOT NULL,
Orcamento DECIMAL (12,2),
DataInicio DATE,
DataFim DATE
);

CREATE TABLE FuncionariosProjetos 
(
IdFuncionariosProjeto INT PRIMARY KEY IDENTITY (1,1),
IdProjeto INT NOT NULL,
constraint FK_FuncionariosProjetos_Projetos
foreign key (IdProjeto)
references Projetos (Id),
IdFuncionarios INT NOT NULL
constraint FK_Funcionario_FuncionariosProjetos
foreign key (IdFuncionarios)
references Funcionarios (Id),
DataEntrada DATE
);

INSERT INTO Departamentos (Nome,DataCriacao)
VALUES
('TI', '2020-01-01'),
('RH', '2021-03-15'),
('Financeiro', '2019-07-10');

INSERT INTO Funcionarios (Nome,Email,Salario,DataAdmissao,IdDepartamentos)
VALUES
('Carlos Silva','carlos@empresa.com',5000.00,'2022-05-10',1),
('Ana Souza','ana@empresa.com',7000.00,'2021-08-20',2),
('Pedro LIma','pedro@empresa',4500.00,'2023-10-15',3);

INSERT INTO Projetos(Nome,Orcamento,DataInicio,DataFim)
VALUES
('Sistema ERP',100000.00,'2023-01-01','2023-12-31'),
('Recrutamento Digital',50000.00,'2023-06-01','2023-10-01'),
('Controle Financeiro',75000.00,'2023-03-01','2023-09-30');

INSERT INTO FuncionariosProjetos(IdFuncionarios,IdProjeto)
VALUES
(1,1,2026-05-18),
(1,3,2026-05-18),
(2,2,2026-05-18),
(3,1,2026-05-18),
(3,3,2026-05-18);

