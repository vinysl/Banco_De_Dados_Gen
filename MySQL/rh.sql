CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR(255),
idade INT,
salario DECIMAL(6,2),
admissao DATE,
PRIMARY KEY(id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,cargo,idade,salario,admissao) VALUES ("Vinicius","Gerente de RH",24,8000.00,"2019-06-19");
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,admissao) VALUES ("Aline","Analista de RH",25,4000.00,"2018-11-22");
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,admissao) VALUES ("Pedro","Coordenador de RH",60,9000.00,"2011-11-30");
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,admissao) VALUES ("Mauricio","Auxiliar de RH",35,2000.00,"2017-09-01");
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,admissao) VALUES ("Natalia","Auxiliar de RH",48,2300.00,"2015-03-11");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 4;