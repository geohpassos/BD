CREATE DATABASE Supermecado;
use Supermecado;
CREATE TABLE produtos(

codigobarras INT primary key,
nome varchar(250),
marca varchar(250),
validade varchar(10),
fornecedor varchar(150),
quantidade INT,
precounitario DECIMAL(10,2)
);
INSERT INTO produtos(codigobarras,nome,marca,validade,fornecedor,quantidade,precounitario) value
(1234567,'Feijao','namorado','10/10','Marcelo',150,20.60);
select * from produtos;
CREATE TABLE fornecedor(
CNPJ INT primary key,
nomeEmpresa varchar(250),
endereco varchar(150),
telefone INT,
email varchar(250)
);
INSERT INTO fornecedor(CNPJ,nomeEmpresa,endereco,telefone,email) value
(123456712,'Feijao de Corda','Rua nazir miguel',1198334-2545,'Marcalo@019');

CREATE TABLE funcionarios(
id INT auto_increment primary key,
nome varchar(250),
CPF INT,
cargo varchar(150),
matricula INT
);
INSERT INTO funcionarios(id,nome,CPF,cargo,matricula) VALUE
(1,'Juliana',98719213919,'Engenheira de Software',1234);
select * from funcionarios;
