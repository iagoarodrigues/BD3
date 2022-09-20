use bd3;
-- create table 
create table categorias(
id int(11) primary key auto_increment,
nome varchar(200) not null
);

create table produtos(
id int(11) primary key auto_increment,
nome varchar(200) not null,
valor float,
categoria_id int(11),
foreign key (categoria_id) references categorias(id)
);

create table vendas(
id int(11) primary key auto_increment,
nota_fiscal char(8) not null,
data date, 
produto_id int(11),
foreign key (produto_id) references produtos(id)
);

-- insert categorias
insert into categorias (nome) values ('eletronicos');
insert into categorias (nome) values ('informatica');
insert into categorias (nome) values ('escritorio');

-- insert produtos
insert into produtos (nome, valor, categoria_id) values ('microondas', 100, 1);
insert into produtos (nome, valor, categoria_id) values ('forno eletrico', 200, 1);
insert into produtos (nome, valor, categoria_id) values ('teclado', 50, 2);
insert into produtos (nome, valor, categoria_id) values ('mouse', 20, 2);
insert into produtos (nome, valor, categoria_id) values ('mesa', 120, 3);
insert into produtos (nome, valor, categoria_id) values ('cadeira', 80, 3);

-- insert vendas
insert into vendas (nota_fiscal, data, produto_id) values ('0001', '2022-09-13', 1);
insert into vendas (nota_fiscal, data, produto_id) values ('0001', '2022-09-13', 2);
insert into vendas (nota_fiscal, data, produto_id) values ('0002', '2022-09-12', 3);
insert into vendas (nota_fiscal, data, produto_id) values ('0002', '2022-09-11', 1);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 5);
insert into vendas (nota_fiscal, data, produto_id) values ('0003', '2022-09-11', 6);
insert into vendas (nota_fiscal, data, produto_id) values ('0004', '2022-09-13', 4);


select * from produtos
inner join categorias
on produtos.categoria_id = categorias.id;

select * from produtos as P
inner join categorias as C
on P.categoria_id = C.id;

select 
C.nome as 'categoria_nome',
C.nome as 'produto_nome',
P.categoria_id = C.id;

select * from vendas
inner join produtos
inner join categorias
on produtos.categoria_id = categorias.id;


