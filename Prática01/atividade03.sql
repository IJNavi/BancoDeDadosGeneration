CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id					BIGINT,
nome		 		VARCHAR(255),
nota				DECIMAL(4,2) NOT NULL,
nascimento			DATE,
turma		 		VARCHAR(255),
PRIMARY KEY		(id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (id, nome, nota, nascimento, turma)
VALUES (202301, "André Silva", 8.5, "2012-01-05", "Turma A"), 
(202302, "Ivan Barbosa", 9.2, "2012-04-06", "Turma B"), 
(202303, "Carlos Pereira", 7.8, "2012-03-05", "Turma A"), 
(202304, "Diana Oliveira", 8.0, "2012-01-10", "Turma B"), 
(202305, "Eduardo Almeida", 6.5, "2012-02-11", "Turma C"), 
(202306, "Fernanda Costa", 9.0, "2012-02-03", "Turma A"), 
(202307, "Gabriel Souza", 4.2, "2012-03-12", "Turma C"), 
(202308, "Helena Rocha", 8.8, "2012-02-20", "Turma B"), 
(202309, "Igor Lima", 6.9, "2012-01-25", "Turma A"), 
(202310, "Juliana Mendes", 4.4, "2012-01-01", "Turma C");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 10.0 WHERE id = 202310;