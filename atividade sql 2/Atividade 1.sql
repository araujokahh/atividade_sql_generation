CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_classe VARCHAR(255) NOT NULL,
tipo_ataque VARCHAR(255) NOT NULL,
nivel_dificuldade VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_personagem VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
classes_id BIGINT
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_categoria
FOREIGN KEY (classes_id) REFERENCES tb_classes (id);

INSERT INTO tb_classes (nome_classe, tipo_ataque, nivel_dificuldade) VALUES
("guerreiro", "espada", "medio"),
("feiticeiro", "magico", "dificil"),
("arqueiro", "a distância", "facil"),
("velocidade", "corpo a corpo e inteligencia", "medio"),
("clima_tempo", "sensorial", "dificil");

INSERT INTO tb_personagens(nome_personagem, nivel, poder_ataque, poder_defesa, classes_id) VALUES
("Hercules", 12, 10500, 7000, 1),            
("Atenas", 14, 5000, 1000, 2),          
("Medusa", 11, 324, 1000, 3),         
("Zeus", 15, 2000, 2000, 5),           
("Afrodite", 10, 450, 250, 5),         
("Aquiles", 13, 630, 8900, 1),         
("Dionisio", 12, 7000, 1999, 4),          
("Orfeu", 9, 1000, 1000, 3); 

-- Select apenas para testar as tabelas
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- SELECT SOLICITADOS NO EXERCÍCIO:
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

-- unindo todos os dados das duas tabelas
SELECT * FROM tb_personagens INNER JOIN tb_classes;

-- Inner Join para trazer apenas os personagens que são arqueiros
-- Também utilizei 'p' e 'c' para criar alias (apelidos) para as tabelas.
SELECT p.id, p.nome_personagem, c.nome_classe, p.nivel, p.poder_ataque, p.poder_defesa
FROM tb_personagens AS p
INNER JOIN tb_classes AS c
ON p.classes_id = c.id
WHERE c.nome_classe = "arqueiro";


