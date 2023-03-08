USE db_exercicio1;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
	nome varchar(255) not null,
    cep int,
    endereco varchar(255),
    cidade varchar(50),
    salario decimal,    
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, cep, endereco, cidade, salario)
values ("Jozu Oliveira", 07272100, "rua caracol", "Guarulhos", 2900.00);

INSERT INTO tb_colaboradores(nome, cep, endereco, cidade, salario)
values ("AG Oliveira", 07272200, "rua joinville", "Leme", 5100.00);

INSERT INTO tb_colaboradores(nome, cep, endereco, cidade, salario)
values ("Lauro Lage", 07272300, "rua miranda", "Itabira", 1900.00);

INSERT INTO tb_colaboradores(nome, cep, endereco, cidade, salario)
values ("Guga Silva", 07272400, "rua cascavel", "Guarulhos", 1700.00);

INSERT INTO tb_colaboradores(nome, cep, endereco, cidade, salario)
values ("Romance", 07272500, "rua limbo", "Campinas", 15000.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 3500.00 WHERE id = 3;

SELECT * FROM tb_colaboradores;
