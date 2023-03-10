-- criar tabela
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL NOT NULL,
    cat_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(cat_id) REFERENCES tb_categorias(id)
);

-- inserir dados na tabela produtos
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Saco de Laranja", 100, 60.99, 1);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Mexerica 1un", 500, 1.00, 1);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Alface 1un", 200, 1.99, 2);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Couve 1un", 150, 2.50, 2);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Caixa Beterraba", 70, 58.00, 3);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Caixa Cenoura", 60, 45.00, 3);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Caixa Aipo", 30, 26.00, 4);
INSERT INTO tb_produtos (nome, quantidade, preco, cat_id)
VALUES ("Caixa Aspargo", 25, 36.00, 4);

-- alterar as casa decimais do preço
ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.cat_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.cat_id
WHERE tb_categorias.id = 1;
