CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(100) NOT NULL,
    borda VARCHAR(100) NOT NULL,
    borda_recheio VARCHAR(100) NOT NULL,
    preco DECIMAL NOT NULL,
    cat_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY(cat_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Frango c/ Catupiry", "Recheada", "Mussarela", 57.60, 1);
INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Chocolate com Banana", "Normal", "Sem recheio", 42, 3);
INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Prestigio","Recheada", "Nutella", 30, 4);
INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Portuguesa","Recheada", "Catupiry", 50, 1);
INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Milho c/ Mussarela", "Normal", "Sem Recheio", 35.99, 1);
INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Nutella c/ MM", "Normal", "Sem recheio", 39.99, 3);
INSERT INTO tb_pizza(sabor, borda, borda_recheio, preco, cat_id)
VALUES("Mussarela", "Normal", "sem Recheio", 25.99, 2);

ALTER TABLE tb_pizza MODIFY preco DECIMAL(6,2);

SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizza WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizza
INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.cat_id;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.cat_id
WHERE tb_categoria.id = 1;