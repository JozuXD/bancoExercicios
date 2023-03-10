-- criar bd
CREATE DATABASE	db_cidade_dos_vegetais;

-- usar db
USE db_cidade_dos_vegetais;

-- criar tabela

	CREATE TABLE tb_categorias(
		id BIGINT AUTO_INCREMENT,
        descricao VARCHAR(50) NOT NULL,
         tipo VARCHAR(50) NOT NULL,
	PRIMARY KEY(id)
    );

-- inserir na tabela
INSERT INTO tb_categorias(descricao, tipo)
VALUES ("Fruta","Organica");
INSERT INTO tb_categorias(descricao, tipo)
VALUES ("Folha", "Organica");
INSERT INTO tb_categorias(descricao, tipo)
VALUES ("Raiz", "Comum");
INSERT INTO tb_categorias(descricao, tipo)
VALUES ("Caule", "Comum");