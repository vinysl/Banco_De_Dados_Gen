CREATE DATABASE db_quitanda; -- Cria um novo banco de dados
USE db_quitanda; -- Seleciona o banco de dados e o usa

CREATE TABLE tb_categorias( -- Cria uma nova tabela
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias(descricao) VALUES("Frutas"); -- Insere valores na tabela
INSERT INTO tb_categorias(descricao) VALUES("Verduras");
INSERT INTO tb_categorias(descricao) VALUES("Legumes");
INSERT INTO tb_categorias(descricao) VALUES("Temperos");
INSERT INTO tb_categorias(descricao) VALUES("Ovos");
INSERT INTO tb_categorias(descricao) VALUES("Outros");

SELECT * FROM tb_categorias; -- Visualiza os dados contido na tabela

CREATE TABLE tb_produtos( -- Cria uma nova tabela para ter relacionamento com a primeira
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
datavalidade DATE,
preco DECIMAL(6,2) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id) -- Chave estrangeira usada para relacionar as duas tabelas
);

SELECT * FROM tb_produtos;
  
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco,categorias_id) VALUES("Tomate",100,"2023-12-15",8.00,1);
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco,categorias_id) VALUES("Maça",100,"2023-12-15",8.00,1);
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco,categorias_id) VALUES("Laranja",100,"2023-12-15",8.00,1);
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco,categorias_id) VALUES("Banana",100,"2023-12-15",8.00,1);
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco,categorias_id) VALUES("Uva",100,"2023-12-15",8.00,1);
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco,categorias_id) VALUES("Pêra",100,"2023-12-15",8.00,1);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Manga", 200, "2022-03-07", 5.49, 1);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Couve", 100, "2022-03-12", 1.50, 2);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categorias_id) VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);
INSERT INTO tb_produtos (nome, quantidade, preco) VALUES("Sacola Cinza", 1118, 0.50);
INSERT INTO tb_produtos (nome, quantidade, preco) VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos ORDER BY nome,preco ASC; -- Visualiza a tabela ordenada de maneira crescente

SELECT * FROM tb_produtos ORDER BY nome DESC; -- Visualiza a tabela ordenada de maneira decrescente

SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00); -- Filtra os dados baseado no parâmetro IN

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00; -- Filtra os dados baseado no intervalo informado com o BETWEEN

SELECT * FROM tb_produtos WHERE nome LIKE "%ra%"; -- Faz uma busca em todos os produtos que contenham a silaba "ra" e retorna com os produtos

SELECT @@collation_database; -- Usado para descobrir se o banco de dados é Case Sensitive(CS) ou Case Insensitive(CI), diferencia ou não letras maiuscúlas e minusculas

-- A maneira como a relação entre as duas tabelas é feita, o úsuário não necessariamente precisa saber que a categora_id 1 é fruta, por isso utilizamos o JOIN para deixar isso visivelmente mais fácil, o resultado trás os dados que são comuns nas duas tabelas
SELECT nome, preco, quantidade, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias  ON tb_produtos.categorias_id = tb_categorias.id;

-- Realiza basicamente o mesmo processo do JOIN porém ele inclui todos os dados da tabela da esquerda(dependente) estando nulos ou não
SELECT nome, preco, quantidade, tb_categorias.descricao FROM tb_produtos LEFT JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

-- Realiza basicamente o mesmo processo do JOIN porém ele inclui todos os dados da tabela da direita(independente) estando nulos ou não
SELECT nome, preco, quantidade, tb_categorias.descricao FROM tb_produtos RIGHT JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

-- Pesquisa dados e agrupa as informações baseado no critério encontrar a média de preço dos produtos agrupados por categoria
SELECT tb_categorias.descricao, AVG(preco) AS Preco_Medio FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id
GROUP BY tb_categorias.descricao
LIMIT 0, 1000;