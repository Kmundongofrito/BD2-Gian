
create database EmpresaDB;
use     EmpresaDB

create table Departamento

 (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(255) NOT NULL UNIQUE,
    DataCriacao DATE

);

create table Funcionarios
(
id int primary key identity,
nome varchar (100) not null,
email varchar (105) unique,
salario decimal (10, 2) not null,
DataAdimissão date,
IdDepartamento int not null,

);


