CREATE DATABASE db_empresa;
USE db_empresa;
CREATE TABLE tb_colaboradores(
id				BIGINT AUTO_INCREMENT,
nome 			VARCHAR(255),
data_inicio		DATE,
salario			DECIMAL(8,2) NOT NULL,
cargos			VARCHAR(255),
PRIMARY KEY		(id)
);

INSERT INTO tb_colaboradores (nome, data_inicio, salario, cargos)
VALUES("Keven Martineli Torres", "2024-01-13", 1900.25, "desenvolvedor júnior 1"),
	  ("Raquel Morabito Brasil", "2024-01-25", 2545.75, "desenvolvedor júnior 2"),
      ("Gustavo Sincero Russo", "2024-02-14", 3150.48, "desenvolvedor pleno 1"),
      ("Ivan Júnior do Porto", "2024-03-10", 1555.60, "Dev PJ meio período"),
      ("Bianca Ruiva Paulista", "2024-05-06", 4000.00, "desenvolvedor pleno 2");
      
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 10000.99 WHERE id = 4;