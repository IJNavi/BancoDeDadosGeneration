CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Criação das tabelas
CREATE TABLE tb_classes (
    id_classe 				INT AUTO_INCREMENT,
    nome_classe 			VARCHAR(100) NOT NULL,
    descricao_classe		VARCHAR(300),
    PRIMARY KEY       		(id_classe)
);

CREATE TABLE tb_personagens (
    id_personagem 			INT AUTO_INCREMENT,
    nome 					VARCHAR(100) NOT NULL,
    poder_ataque 			INT,
    poder_defesa 			INT,
    classe_id 				INT,
    FOREIGN KEY 			(classe_id) REFERENCES tb_classes(id_classe),
    PRIMARY KEY             (id_personagem)
);

-- Inserção de dados na tabela tb_classes
INSERT INTO tb_classes (nome_classe, descricao_classe) VALUES
('Guerreiro', 'Classe de combate corpo a corpo, especializada em defesa e resistência.'),
('Arqueiro', 'Classe de ataque à distância, com alta precisão e habilidade com arcos, bestas e flechas.'),
('Mago', 'Classe de ataques mágicos, com grande poder de destruição e feitiçaria.'),
('Ladrão', 'Classe ágil, especializada em furtividade e ataques rápidos com armas brancas leves.'),
('Clérigo', 'Classe de cura e apoio, especializada em magias de proteção e regeneração.');

-- Inserção de dados na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES
('Ivan', 2500, 1500, 1),    -- Guerreiro
('Cácia', 1200, 1800, 2),   -- Arqueiro
('Keven', 3000, 500, 3),    -- Mago
('Unzaga', 1700, 800, 4),   -- Ladrão
('Anna', 900, 1200, 5),     -- Clérigo
('Bianca', 2200, 1300, 1),  -- Guerreiro
('Sandy', 1000, 1100, 2),   -- Arqueiro
('Astrid', 2000, 1500, 3);  -- Mago

-- SELECTs
-- 1. Personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

-- 2. Personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

-- 3. Personagens com a letra 'C' no nome
SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

-- 4. INNER JOIN com tb_classes
SELECT p.nome, p.poder_ataque, p.poder_defesa, c.nome_classe, c.descricao_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id_classe;

-- 5. INNER JOIN com filtro de classe (Arqueiro)
SELECT p.nome, p.poder_ataque, p.poder_defesa, c.nome_classe, c.descricao_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id_classe
WHERE c.nome_classe = 'Arqueiro';