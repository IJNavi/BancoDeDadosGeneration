CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria 			INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria 			VARCHAR(100) NOT NULL,
    descricao_categoria 	VARCHAR(255) NOT NULL
);

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
    id_produto 				INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto 			VARCHAR(100) NOT NULL,
    valor 					DECIMAL(10, 2) NOT NULL,
    fabricante 				VARCHAR(100) NOT NULL,
    validade 				DATE NOT NULL,
    id_categoria 			INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Medicamentos', 'Produtos farmacêuticos para tratamentos de saúde.'),
('Cosméticos', 'Produtos de cuidados pessoais e beleza.'),
('Higiene Pessoal', 'Produtos para higiene diári.a'),
('Suplementos', 'Produtos para melhoria de saúde e nutrição.'),
('Produtos Naturais', 'Produtos com ingredientes naturais e orgânicos.');

-- Inserção de 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, valor, fabricante, validade, id_categoria) VALUES
('Paracetamol 500mg', 10.00, 'Farmacorp', '2025-12-31', 1),
('Shampoo Anticaspa', 35.00, 'Beleza Pura', '2024-05-15', 2),
('Creme Hidratante Corporal', 45.00, 'Dermacare', '2024-11-30', 2),
('Sabonete Líquido', 8.50, 'Higiene Fácil', '2024-08-22', 3),
('Multivitamínico', 60.00, 'NutriMax', '2026-03-12', 4),
('Óleo Essencial de Lavanda', 25.00, 'Natural Life', '2024-09-05', 5),
('Aspirina 100mg', 15.00, 'PharmaPlus', '2025-01-10', 1),
('Suplemento de Whey Protein', 120.00, 'PowerFit', '2027-07-19', 4);

-- SELECT para retornar todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- SELECT para retornar todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

-- SELECT utilizando INNER JOIN para unir os dados das tabelas tb_produtos e tb_categorias
SELECT p.id_produto, p.nome_produto, p.valor, p.fabricante, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

-- SELECT utilizando INNER JOIN, trazendo apenas os produtos que pertencem a categoria Cosméticos.
SELECT p.id_produto, p.nome_produto, p.valor, p.fabricante, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';