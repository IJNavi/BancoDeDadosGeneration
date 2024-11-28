CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria 			INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria 			VARCHAR(100) NOT NULL,
    descricao_categoria 	VARCHAR(255) NOT NULL
);

-- Criação da tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id_pizza 		INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza		VARCHAR(100) NOT NULL,
    valor 			DECIMAL(10, 2) NOT NULL,
    ingredientes 	VARCHAR(255) NOT NULL,
    tamanho			VARCHAR(100) NOT NULL,
    id_categoria 	INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Convencional', 'Pizzas de preparo convencional.'),
('Vegana', 'Pizzas que contem apenas massa, legumes e o místico produto NãoAcreditoQueNãoÉQueijo. Cozinha e utensílios à parte, sem contato com alimentos de origem animaal.'),
('Sem lactose', 'Pizzas com ingredientes que não contém lactose.'),
('Doce', 'Pizzas com diversas opções de coberturas doces.'),
('Vegetariana', 'Pizzas com produtos a base de animais, como queijo e ovo, mas sem carnes e peixes.');

-- Inserção de 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome_pizza, valor, ingredientes, tamanho, id_categoria) VALUES
('Margarita Clássica', 40.00, 'Grande', 'Molho de tomate, queijo, manjericão', 5),
('Margarita duChef', 40.00, 'Grande', 'Molho de tomate, NãoAcreditoQueNãoÉQueijo, manjericão', 2),
('Frango com Catupiry Especial', 50.00, 'Média','Frango desfiado, catupiry, azeitonas', 1),
('Calabresa com Cebola', 35.00, 'Grande','Linguiça calabresa, queijo, cebola, azeitonas', 1),
('Calabresa Paulista com Cebola', 35.00, 'Grande','Linguiça calabresa, cebola, azeitonas', 3),
('Pizza de Chocolate', 55.00, 'Pequena', 'Chocolate, morango, chantilly', 4),
('Pizza de Nutella', 60.00, 'Pequena', 'Nutella, morangos, chantilly', 4),
('Pizza Green Light', 45.00, 'Grande', 'Tomate, cogumelos, pimentão', 5),
('Pizza de Frango e Bacon', 48.00, 'Média', 'Frango desfiado, bacon, queijo', 1),
('Pizza de 4 Queijos', 52.00, 'Grande', 'Queijo mussarela, provolone, gorgonzola, parmesão', 1);

-- SELECT para retornar todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- SELECT para retornar todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- SELECT utilizando INNER JOIN para unir os dados das tabelas tb_pizzas e tb_categorias
SELECT p.id_pizza, p.nome_pizza, p.valor, p.ingredientes, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

-- SELECT utilizando INNER JOIN, trazendo apenas as pizzas que pertencem a uma categoria específica (exemplo: Doce)
SELECT p.id_pizza, p.nome_pizza, p.valor, p.ingredientes, p.tamanho, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';