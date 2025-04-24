CREATE DATABASE PwAtividade;

USE PwAtividade;

CREATE TABLE usuario(
 idUsuario INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(250) NOT NULL,
 dataNasc VARCHAR(250),
 CPF VARCHAR(11),
 CNPJ VARCHAR(50),
 RazaoSocial VARCHAR(250),
 email VARCHAR(250) NOT NULL,
 senha VARCHAR(20) NOT NULL
);
INSERT INTO usuario(nome,dataNasc,CPF,CNPJ,RazaoSocial,email,senha) VALUE 
('Danilo Gomes','13/03/2006','123456789','98765432111','0000000000','danilogomes@gmail.com','lakdlaksjfjlsa'),
('Davi Sousa', '09/10/2005', '0987654324','25894205933','1111111111','davisousa@gmail.com','asdfghrds@');

CREATE TABLE login(
idLogin INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(150) NOT NULL,
hash_senha VARCHAR(30) NOT NULL,
idUsuarios INT,
CONSTRAINT fk_login_usuario FOREIGN KEY (idUsuarios) REFERENCES usuario(idUsuario)
);
INSERT INTO login(email,hash_senha,idUsuario) VALUE 
('danilogomes@gmail.com','lakdlaksjfjlsa',1),
('davisousa@gmail.com','asdfghrds@',1);




