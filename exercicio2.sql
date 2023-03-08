CREATE DATABASE db_exercicio2;

USE db_exercicio2;

CREATE TABLE tb_escola(
id bigint auto_increment,
	nome varchar(255) not null,
    ra int not null,
    ano varchar(50),
    professor varchar (100),
    media float,
PRIMARY KEY (id)
);

INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Jozu Oliveira", 12345671, "3º ano", "Jeferson", 7.5);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("AG Oliveira", 12345672, "2º ano", "Augusto", 8.5);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Romancin", 12345673, "1º ano", "Tasmania", 9.5);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Lauro Lage", 12345674, "2º ano", "Augusto", 6.5);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Guga Silva", 12345675, "5ª serie", "Amanda", 5.5);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Renata Oliveira", 12345676, "3º ano", "Jeferson", 5);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Renan ", 12345677, "5ª ano", "Amanda", 9);
INSERT INTO tb_escola(nome, ra, ano, professor, media)
values ("Gabriel Teixeira", 12345678, "1º ano", "Tasmania", 7);

SELECT * FROM tb_escola WHERE media > 7.0;

SELECT * FROM tb_escola WHERE media < 7.0;

UPDATE tb_escola SET media = 8 AND ano = "2º ano" WHERE id = 1;

SELECT * FROM tb_escola;

UPDATE tb_escola SET media=8 WHERE id = 1;

UPDATE tb_escola SET ano = "2º ano" WHERE id = 1;

UPDATE tb_escola SET professor = "Augusto" WHERE id = 1;
