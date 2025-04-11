CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
tipo VARCHAR(255)
);

-- treinando criar a tabela já com o fk "embutido"
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
tamanho VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, tipo) VALUES
("Salgada", "Pizzas tradicionais salgadas"),
("Doce", "Pizzas doces para sobremesa"),
("Vegetariana", "Sem ingredientes de origem animal"),
("Especial", "Crie seu sabor"),
("Promoção", "Pizzas com desconto especial de quarta-feira");

INSERT INTO tb_pizzas(nome, descricao, tamanho, preco, categoria_id) VALUES
("Calabresa", "Calabresa com cebola", "Grande", 40.00, 5),
("Quatro Queijos", "Queijo prato, muçarela, gorgonzola e parmesão", "Média", 70.00, 1),
("Chocolatuda", "Coberta com chocolate ao leite", "Pequena", 75.00, 2),
("Romeu e Julieta Sem Veneno", "Goiabada e queijo", "Pequena", 60.00, 2),
("Margherita Delicia", "Muçarela, tomate e manjericão", "Média", 50.00, 3),
("Vegana", "Sem ingredientes de origem animal", "Média", 52.00, 3),
("Frangolina", "Frango com Catupiry", "Grande", 62.00, 4),
("Muçarela", "Simples e deliciosa", "Média", 42.00, 5);


SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id;
SELECT * FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = "doce";

