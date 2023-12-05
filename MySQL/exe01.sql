CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
caracteristica VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
inteligencia INT NOT NULL,
classes_id BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

INSERT INTO tb_classes(tipo,caracteristica) VALUES("Mago","Suporte");
INSERT INTO tb_classes(tipo,caracteristica) VALUES("Druida","Suporte");
INSERT INTO tb_classes(tipo,caracteristica) VALUES("Guerreiro","Tank");
INSERT INTO tb_classes(tipo,caracteristica) VALUES("Arqueiro","Atirador");
INSERT INTO tb_classes(tipo,caracteristica) VALUES("Cavaleiro","Combate");

INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Patolino",1800,900,4000,1);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Pernalonga",2700,1500,1000,5);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Zé Colmeia",2300,4000,600,3);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Catatau",900,1800,2900,2);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Garfield",1600,400,3900,4);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Zeca Urubu",3000,1000,300,5);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Pica Pau",1700,900,2100,4);
INSERT INTO tb_personagens(nome,ataque,defesa,inteligencia,classes_id) VALUES("Penelope Charmosa",2350,700,4100,1);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, inteligencia, tb_classes.tipo 
FROM tb_personagens INNER JOIN tb_classes  ON tb_personagens.classes_id = tb_classes.id
ORDER BY nome ASC;

SELECT tb_personagens.*, tb_classes.tipo AS tipo_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.tipo = "Arqueiro";