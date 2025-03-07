CREATE database biblioteca_uirapuru;

use biblioteca_uirapuru;

create table livros (
	id INT PRIMARY KEY,
    titulo VARCHAR(225),
    autor VARCHAR(225),
    preco DECIMAL (10, 2),
    editora VARCHAR (225),
    genero VARCHAR(225),
    ano_publicacao INT

);

/*Removendo uma coluna da tabela*/
ALTER TABLE livros DROP genero;

select * from livros;

ALTER TABLE livros DROP editora;

SELECT * FROM livros;

/*comando para adiconar uma coluna em uma tabela*/
ALTER TABLE livros ADD CNPJ INT;

/*Alterar o tipo de dado de uma coluna,exemplo: 
em 2025, o campo de CNPJ passará a ser alfanumerico então ele não pode ser INT, vamos alterar
*/

ALTER TABLE livros MODIFY CNPJ VARCHAR(25);

SELECT * FROM livros;

/*Alterar a coluna, para impedir que ela seja null ou seja, ela vai precisar ter registros, senao dará erro*/

ALTER TABLE livros MODIFY titulo VARCHAR(225) NOT NULL;
ALTER TABLE livros MODIFY autor VARCHAR(225) NOT NULL;


ALTER TABLE livros DROP CNPJ;
INSERT INTO livros(id, titulo,autor) VALUE
(1,'JavaScript', 'José Davi'),
(2,'Java 8', 'Peter Jandl'),
(3,'Google Android', 'Ricardo Lecheta');

UPDATE livros
SET preco = 99.99
WHERE id = 1;

UPDATE livros 
SET preco = 150.00
WHERE id = 2;

SELECT * FROM livros;