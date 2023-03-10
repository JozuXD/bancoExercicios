-- cria banco de dados
CREATE DATABASE db_generation_game_online;

-- usar o bd
USE db_generation_game_online;

-- criar a tabela
CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(50) NOT NULL,
especializacao VARCHAR(50) NOT NULL,
arma VARCHAR(50),
PRIMARY KEY (id)
);

-- inserir dados
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Mago", "Fogo", "Adaga/ Cajado/Varinha");
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Sacerdote","Sagrado", "Cajado/Varinha");
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Paladino", "Retribuição","Espada Grande/ Marreta");
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Caçador", "Sobrevivencia", "Lança");
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Monge", "Mestre Cervejeiro", "Cajado/ Lança/ Barril");
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Monge", "Andarilho do Vento", "Soqueiras");
INSERT INTO tb_classe(classe, especializacao, arma)
VALUES ("Bruxo", "Destruição", "Cajado/ Adaga/ Varinha");