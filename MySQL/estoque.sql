CREATE DATABASE db_estoque; -- Cria um novo banco de dados
DROP DATABASE db_estoque; -- Deleta um banco de dados
USE db_estoque; -- Seleciona um banco de dados a partir do seu nome

CREATE TABLE tb_marcas ( -- Cria uma tabela dentro do banco de dados selecionado
id BIGINT AUTO_INCREMENT,
nome VARCHAR (20) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY (id)
)

SELECT * FROM tb_marcas; -- Mostra tudo o que tem dentro da tabela//Quando se tira o asterisco é possível acessar um parâmetro exclusivo da tabela e quando se usa WHERE é possível acessar somente a linha específica mencionada

INSERT INTO tb_marcas(nome,ativo) VALUE("nike", true); -- Insere parâmetros dentro da tabela
INSERT INTO tb_marcas(nome,ativo) VALUE("adidas", false);

UPDATE tb_marcas SET ativo = TRUE WHERE id = 2;

INSERT INTO tb_marcas(nome,ativo) VALUE("vans", true);

DELETE FROM tb_marcas WHERE id = 3; -- Deleta uma linha da tabela, a linha não pode ser reutilizada pois o banco de dados entende que esse espaço já foi utilizado

INSERT INTO tb_marcas(nome,ativo) VALUE("vans", false);

ALTER TABLE tb_marcas ADD descricao varchar(255); -- Cria uma nova coluna dentro da nossa tabela

ALTER TABLE tb_marcas DROP COLUMN descricao;

DROP TABLE tb_marcas;

CREATE TABLE tb_marcas ( -- Cria uma tabela dentro do banco de dados selecionado
id BIGINT AUTO_INCREMENT,
nome VARCHAR (20) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_marcas(nome,ativo) VALUE("Nike", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("H&M", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Zara", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Louis Vuitton", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Adidas", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Uniqlo", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Hermes", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Rolex", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Gucci", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Cartier", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Polo", TRUE);
INSERT INTO tb_marcas(nome,ativo) VALUE("Armany", TRUE);

SELECT * FROM tb_marcas;

CREATE TABLE tb_produtos ( -- Cria uma tabela dentro do banco de dados selecionado
id BIGINT AUTO_INCREMENT,
nome VARCHAR (20) NOT NULL,
preco DECIMAL,
marca_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(marca_id) REFERENCES tb_marcas(id)
)

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,preco,marca_id) VALUE("Camisa",50, 1);
INSERT INTO tb_produtos(nome,preco,marca_id) VALUE("Tênis",199.90, 2);

ALTER TABLE tb_produtos MODIFY COLUMN preco DECIMAL(6,2);

INSERT INTO tb_produtos(nome,preco,marca_id) VALUE("Calça",79.80, 3);
INSERT INTO tb_produtos(nome,preco,marca_id) VALUE("Tênis",199.90, 99);