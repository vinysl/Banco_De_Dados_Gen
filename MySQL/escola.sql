CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nota DECIMAL(4,2)  NOT NULL,
datadenascimento DATE NOT NULL,
datainicio DATE NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM tb_estudantes;

INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Vinicius",10.00,"1999-06-16","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Aline",7.00,"1998-06-16","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Laura",5.00,"2009-10-18","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Gustavo",6.00,"2000-12-18","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Gabriel",9.00,"2001-09-07","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Kauã",8.00,"2003-02-15","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Nicolly",4.75,"2003-01-07","2023-02-06");
INSERT tb_estudantes(nome,nota,datadenascimento,datainicio) VALUES("Paulo Vitor",6.75,"1992-02-14","2023-02-06");

SELECT * FROM tb_estudantes WHERE nota > 7.0; 
SELECT * FROM tb_estudantes WHERE nota < 7.0; 

DELETE FROM tb_estudantes WHERE id = 10;

UPDATE tb_estudantes SET nota = 7.00 WHERE id = 9;