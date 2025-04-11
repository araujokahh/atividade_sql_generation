CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(255),
descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_prod VARCHAR(255),
descricao_prod VARCHAR(255),
marca VARCHAR(255),
preco DECIMAL(7,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao_categoria) VALUES
("Elétrica", "Itens elétricos"),
("Hidráulica", "Tubos Tigre"),
("Pintura", "Tintas Suvinil"),
("Ferragens", "Pregos e parafusos"),
("Acabamento", "Pisos e outros");

INSERT INTO tb_produtos(nome_prod, descricao_prod, marca, preco, categoria_id) VALUES
("Tinta Acrílica", "Uso interno e externo", "Suvinil", 120.00, 3),
("Fio Elétrico", "Cobre 4mm", "Cobrasil", 80.00, 1),
("Chuveiro", "Elétrico", "Lorenzetti", 150.00, 2),
("Parafuso", "Vários tamanhos", "Sem marca", 15.00, 4),
("Caixa d'água", "1000L", "Fortlev", 250.00, 2),
("Interruptor", "Simples branco", "Sem marca", 22.00, 1),
("Rejunte", "Para pisos", "Diversas marcas que não conheço", 18.00, 5),
("Azulejo", "Branco fosco", "Alguma marca de azulejos", 140.00, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_prod LIKE "%c%";

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome_categoria = "Elétrica";

