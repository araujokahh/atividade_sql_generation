CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
descricao VARCHAR(255)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_cursos VARCHAR(255) NOT NULL,
descricao_cursos VARCHAR(255),
duracao INT,
preco DECIMAL(7,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, descricao) VALUES
("Java", "Programação em Java"),
("Front-end", "HTML, CSS, JS"),
("Back-end", "Node.js, Java, Python"),
("Dados", "SQL, BI, Análise de Dados"),
("Soft Skills", "Desenvolvimento pessoal e carreira");

INSERT INTO tb_cursos(nome_cursos, descricao_cursos, duracao, preco, categoria_id) VALUES
("Java POO", "Curso de orientação a objetos com Java", 40, 750.00, 1),
("HTML e CSS", "Fundamentos do Front", 30, 300.00, 2),
("Python para Dados", "Data Science", 50, 980.00, 4),
("SQL", "Banco de dados relacional", 35, 620.00, 4),
("Lógica de Programação", "Algoritmos", 25, 450.00, 2),
("JavaScript Avançado", "Para o Front", 40, 800.00, 2),
("Autoconhecimento", "Soft skills essenciais para carreira", 15, 200.00, 5),
("Java Spring Boot", "Back-end com Java", 60, 890.00, 1);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_cursos LIKE "%J%";

SELECT * FROM tb_cursos c INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

SELECT * FROM tb_cursos c INNER JOIN tb_categorias cat ON c.categoria_id = cat.id WHERE cat.nome = "Java";
