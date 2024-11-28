CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id					BIGINT AUTO_INCREMENT,
nomeproduto 		VARCHAR(255),
quantidade			INT,
data_fabricacao		DATE,
preco				DECIMAL(10,2) NOT NULL,
PRIMARY KEY		(id)
);


INSERT INTO tb_produtos (nomeproduto, quantidade, data_fabricacao, preco)
VALUES("Carro de Controle", 50, "2024-01-02", 250.45),
      ("Boneca", 60, "2024-02-11", 46.69), 
      ("Draga", 20, "2024-01-15", 85.00),
      ("Autorama", 15, "2024-03-08", 510.10),
      ("Bola", 40, "2024-03-10", 32.90),
      ("Cubo Mágico", 10, "2024-04-01", 12.99),
      ("Pipa", 100, "2024-04-02", 2.50),
      ("Bicicleta Elétrica", 5, "2024-03-01", 8568.70);
      
      
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 120 WHERE id = 7;