-- criar a tabela
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
	nivel INT,
	ataque INT,
	defesa INT,
	classe_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(classe_id) REFERENCES tb_classe(id)
);

-- adicioar a coluna qque falto
ALTER TABLE tb_personagens
ADD nome VARCHAR(50);

-- inserir dados tabela personagens
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Androssi", 120, 4000, 300, 1);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("VadaoWind", 300, 8500, 100, 6);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Yonlock", 60, 1200, 150, 7);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("GladiPriest", 100, 500, 2100,2);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Desafeto", 150, 600, 5000, 5);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("MeninaVenono", 20, 500, 40, 4);
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Dracdracron", 500, 9999, 2000, 3);


SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%ANDSROSSI%";

SELECT * FROM tb_personagens
INNER JOIN tb_classe
ON tb_classe.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classe
ON tb_classe.id = tb_personagens.classe_id
WHERE tb_classe.id = 6;

SELECT nivel, nome, classe, especializacao FROM tb_personagens
INNER JOIN tb_classe 
ON tb_classe.id = tb_personagens.classe_id;

