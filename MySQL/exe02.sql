CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
doce VARCHAR(255),
salgada VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sabor VARCHAR(255) NOT NULL,
preco DECIMAL(4,2) NOT NULL,
ingredientes VARCHAR(255) NOT NULL,
categorias_id BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(doce) VALUES("Com borda"); 
INSERT INTO tb_categorias(doce) VALUES("Sem borda"); 
INSERT INTO tb_categorias(salgada) VALUES("Com borda"); 
INSERT INTO tb_categorias(salgada) VALUES("Sem borda"); 
INSERT INTO tb_categorias(salgada) VALUES("Broto"); 

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Pizza de Chocolate","Chocolate com avelã",50.00,"Chocolate artificial sabor avelã",1); 
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Pizza Romeu e Julieta","Queijo com goiabada",37.90,"Queijo mussarela e goiabada",2); 
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Pizza de Calabresa","Calabresa Toscana",28.00,"Calabresa e cebola",3); 
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Pizza de 4 queijos","Quatro tipos de queijo",42.00,"Queijos mussarela,catupiry,chedddar e provolone",4); 
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Pizza de Oreo","Oreo",40.00,"Chocolate e bolacha oreo",2); 
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Pizza de Camarão","Camarão",52.00,"Queijo mussarela e camarão",4); 
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Broto de Frango c/catupiry","Frango c/catupiry",18.00,"Frango desfiado e catupiry",5);  
INSERT INTO tb_pizzas(nome,sabor,preco,ingredientes,categorias_id) 
VALUES("Broto de Bacon","Bacon",20.00,"Queijo mussarela e bacon",5); 

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, sabor, preco, ingredientes, tb_categorias.doce, tb_categorias.salgada
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT nome, sabor, preco, ingredientes, tb_categorias.doce, tb_categorias.salgada
FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.doce = "Com Borda" OR tb_categorias.doce = "Sem Borda";