CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
preco DECIMAL(6,2) NOT NULL,
marca VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Perfume",10,99.99,"O Boticário");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Perfume",30,49.99,"Avon");
INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Perfume",20,69.99,"Natura");
INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Perfume",25,149.99,"Eudora");
INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Creme",20,19.99,"Avon");
INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Creme",30,49.99,"O Boticário");
INSERT INTO tb_produtos(nome,quantidade,preco,marca) VALUE("Creme",20,39.99,"Natura");

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 650.00 WHERE id = 4;