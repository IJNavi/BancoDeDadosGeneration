CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
)

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2024-11-25", 8.00),
	   ("maça", 90, "2024-11-25", 5.00);
       
SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

-- preco maior que 5 e quantidade maior que 100
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade > 100;
SELECT * FROM tb_produtos WHERE preco > 5.00 && quantidade > 100;
SELECT * FROM tb_produtos WHERE preco > 5.00 && quantidade > 90;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("abacate", 1000, "2024-11-25", 4000.50);

SELECT * FROM tb_produtos WHERE preco > 5.00 && quantidade > 100;

-- Altera estrutura da tabela
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);
ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- Altera dados já inseridos na tabela
UPDATE tb_produtos SET preco = 2.99 WHERE id = 4;