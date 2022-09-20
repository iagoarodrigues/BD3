-- BDIII A03
CREATE DATABASE bd2exercicios;

USE bd2exercicios;

CREATE TABLE usuarios  (
	id INT PRIMARY KEY auto_increment,
	nome varchar(100) null, 
	email varchar(100) null, 
	senha varchar(100) null,
	perfil varchar(50) null
);

INSERT INTO usuarios (
	nome,
	email,
	senha,
	perfil
)
VALUES (
	'André Neves',
	'andr@andr.com.br',
	'123456789',
	'desenvolvedor'
),
(
	'Luciene',
	'lu@lu.com.br',
	'987654321',
	'administrador'
),
(
	'Ana',
	'ana@ana.com.br',
	'989898989',
	'gerente'
);

create table carro (
  id int(11) primary key auto_increment,
  nome varchar(200) not null,
  valor int(11),
  endereco varchar(255)
);

RENAME TABLE carro TO carros;

ALTER TABLE carros change COLUMN valor valor FLOAT; 

ALTER TABLE carros DROP COLUMN endereco;

ALTER TABLE carros ADD COLUMN observacao TEXT(100);


-- Obs.: Tente colocar a senha criptografada no banco de dados. Consulte a documentação para entender mais sobre criptografia e coloque SHA2 (256)
/*
ALTER TABLE usuarios ADD COLUMN senha_criptografada  VARCHAR(100);

UPDATE
	usuarios 
SET
	senha_criptografada = SHA2(SENHA, 256)
    
WHERE
	ID IN (1,2,3);
*/
