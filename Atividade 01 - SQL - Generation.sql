CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
idade INT,
salario DECIMAL(7,2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores (nome, cargo, idade, salario) VALUE 
("Pamela Camargo", "Desenvolvedora", 31, 10000.00),
("Beatriz Camargo", "Psicologa", 22, 5000.00),
("Adriana Aparecida", "Confeiteira", 51, 8000.00),
("Edson Boing", "Produtor", 30, 1550.00),
("Gustavo Uliana", "Radialista", 31, 7000.00),
("Pedro João", "Metalúrgico", 56, 4000.00),
("Sheyla Lucas", "Cozinheira", 42, 1500.00),
("Karina Camargo", "Desenvolvedora", 29, 7500.00);

## Retorna os colaboradores com salário maior do que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

## Retorna os colaboradores com salário menor do que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

## Atualiza um registro da tabela 
UPDATE tb_colaboradores SET idade = 44 WHERE id = 7;

SELECT * FROM tb_colaboradores;






