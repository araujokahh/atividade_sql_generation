CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(255),
descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
descricao_produto VARCHAR(255),
origem VARCHAR(255),
preco DECIMAL(6,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao_categoria) VALUES
("Frutas", "Frutinhas direto da fazenda"),
("Verduras", "Folhas verdinhas"),
("Legumes", "Ricos em nutrientes"),
("Orgânicos", "Sem agrotóxicos do jeitinho que a terra fez"),
("Exóticos", "Diferentões");

INSERT INTO tb_produtos(nome_produto, descricao_produto, origem, preco, categoria_id) VALUES
("Maçã", "Maçã verde", "Santa Catarina", 12.00, 1),
("Cenoura", "Rica em vitamina A e ajuda a bronzear", "Paraná", 5.00, 3),
("Alface", "Americana", "São Paulo", 4.50, 2),
("Banana", "Prata docinha", "Bahia", 10.00, 1),
("Rúcula", "Amarga e gostosa", "São Paulo", 6.50, 2),
("Tomate", "Salada ou molho", "Minas Gerais", 8.00, 3),
("Pitaya", "Bonita e sem graça", "SP", 55.00, 5),
("Abacaxi", "Ácido e refrescante", "Bahia", 60.00, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome_categoria IN ("Frutas");