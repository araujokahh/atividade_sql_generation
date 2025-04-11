CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
descricao VARCHAR(255),
fabricante VARCHAR(255),
preco DECIMAL(6,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, descricao) VALUES
("Medicamentos", "Medicamentos diversos - Você curada!"),
("Vitaminas", "Suplementos vitamínicos - Você vitaminada e exclusiva!"),
("Cosméticos", "Produtos de beleza e higiene - Você mais bela e limpinha!"),
("Infantil", "Produtos para bebês e crianças - Para seu bebê fofinho!"),
("Genéricos", "Medicamentos Genéricos Ultrafarma - Você curada e com dimdim!");

INSERT INTO tb_produtos(nome, descricao, fabricante, preco, categoria_id) VALUES
("Paracetamol", "Analgésico e antitérmico", "Neo Química", 8.50, 1),
("Vitamina C", "Suplemento de vitamina C", "W Pink", 25.00, 2),
("Cerave Hidratante", "Para pele extra seca", "Cerave", 100.00, 3),
("Skelt Autobronzeador", "Bronze instantâneo", "Skelt", 89.00, 4),
("Ibuprofeno", "Anti-inflamatório", "Industria Blá Blá Blá", 15.00, 5),
("Pomada para Assaduras", "Uso infantil", "Bepantol", 22.00, 4),
("Protetor Solar", "FPS 50", "ISDIN", 98.00, 3),
("Complexo B", "Vitaminas do complexo B", "W Pink", 55.00, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = "Cosméticos";

