CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
quantidade INT,
cor VARCHAR(255),
preco DECIMAL (7,2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome_produto, quantidade, cor, preco) VALUE ("camiseta", 15, "marinho", 150.00),
("vestido", 3, "laranja", 210.50),
("saia", 10, "preto", 87.99),
("calça", 20, "marrom", 399.90),
("camisa seda", 8, "branca", 980.90),
("shorts", 7, "jeans", 234.90),
("jaqueta", 4, "pink", 759.99),
("cashmere", 3, "verde militar", 1499.00),
("bolsa", 4, "azul claro", 989.99),
("sapato", 6, "caramelo", 599.99);

## Retorna os produtos com valor maior que 500
SELECT * FROM tb_produtos WHERE preco > 500;

## Retorna os produtos com valor menor que 500
SELECT * FROM tb_produtos WHERE preco < 500;

## Atualiza um registro da tabela 
UPDATE tb_produtos SET cor = "off white" WHERE id = 1;

SELECT * FROM tb_produtos;






