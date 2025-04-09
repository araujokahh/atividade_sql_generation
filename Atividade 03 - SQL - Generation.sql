CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cpf BIGINT,
nome_responsavel VARCHAR(255),
nota DECIMAL(3,1),
PRIMARY KEY(id)
);

INSERT INTO tb_aluno(nome, cpf, nome_responsavel, nota) VALUE ("Samantha Jones", 11111, "Maria Jones", 8.5),
("Aidan Shaw", 22222, "Edgar Shaw", 9.5),
("Miranda Hobbes", 33333, "Ana Maria", 7.0),
("Dulce Maria", 44444, "Antonio João", 6.5),
("João Pedro", 55555, "Flavia Guedes", 8.0),
("Isabella Barros", 66666, "Carla Barros", 10.0),
("Lady Gaga", 77777, "Little Monster", 10.5),
("Virginia Fonseca", 88888, "Margarete Serrão", 7.5),
("Carrie Bradshaw", 99999, "Marie Bradshaw", 9.5),
("Charlotte York", 10101, "Kristin York", 6.5);

## Retorna os alunos com nota maior que 7
SELECT * FROM tb_aluno WHERE nota > 7;

## PLUS: Retorna os alunos com nota maior ou igual a 7
SELECT * FROM tb_aluno WHERE nota >= 7;

## Retorna os alunos com nota menor que 7
SELECT * FROM tb_aluno WHERE nota < 7;

## Atualiza um registro da tabela 
UPDATE tb_aluno SET nota = 10.0 WHERE id = 9;

SELECT * FROM tb_aluno;
