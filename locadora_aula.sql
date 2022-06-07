create database locadora_aula;
use locadora_aula;

create table ator(
	ator_id int not null auto_increment,
    primeiro_nome varchar(45) not null,
    ultimo_nome varchar(45) not null,
	primary key (ator_id)
);

insert into ator values ('0', 'Brad', 'Pitt');
insert into ator values ('0', 'Julia', 'Roberts');
insert into ator values ('0', 'George', 'Clooney');
insert into ator values ('0', 'Juliana', 'Paes');
insert into ator values ('0', 'Jack', 'Sparrow');
insert into ator values ('0', 'Cris', 'Evans');
insert into ator values ('0', 'Robert', 'Downey Jr');
insert into ator values ('0', 'Cris', 'Pratt');

create table categoria(
	categoria_id int not null auto_increment,
    nome varchar(25) not null,
	primary key (categoria_id)
);

insert into categoria value ('0', 'Terror');
insert into categoria value ('0', 'Ação');
insert into categoria value ('0', 'Aventura');
insert into categoria value ('0', 'Suspense');
insert into categoria value ('0', 'Ficção');
insert into categoria value ('0', 'Comédia');
insert into categoria value ('0', 'Romance');

create table filme_texto(
	filme_id int not null auto_increment,
    titulo varchar(255) not null,
	primary key (filme_id)
);

insert into filme_texto value ('0', 'O auto da compadecida');
insert into filme_texto value ('0', 'Os Vingadores');
insert into filme_texto value ('0', 'Doutor Estranho');
insert into filme_texto value ('0', 'Tropa de Elite');
insert into filme_texto value ('0', 'Até Que Sorte Nos Separe');
insert into filme_texto value ('0', 'Aquaman');
insert into filme_texto value ('0', 'Velozes e Furiosos');

create table pais(
	pais_id int not null auto_increment,
    pais varchar(50) not null,
	primary key (pais_id)
);

insert into pais value ('0', 'Brasil');
insert into pais value ('0', 'Estados Unidos');
insert into pais value ('0', 'Alemanha');
insert into pais value ('0', 'Inglaterra');
insert into pais value ('0', 'Canadá');
insert into pais value ('0', 'Japão');
insert into pais value ('0', 'Noruega');

create table idioma(
	idioma_id int not null auto_increment,
    nome char(20) not null,
	primary key (idioma_id)
);

insert into idioma value ('0', 'Português-BR');
insert into idioma value ('0', 'Inglês');
insert into idioma value ('0', 'Alemão');
insert into idioma value ('0', 'Francês');
insert into idioma value ('0', 'Japonês');
insert into idioma value ('0', 'Norueguês');

create table filme(
	filme_id int not null auto_increment,
    titulo varchar(255) not null,
    descricao text,
    ano_de_lancamento year(4) default null,
    idioma_id int not null,
    idioma_original_id int default null,
    duracao_da_locacao int not null default '3',
    preco_da_locacao decimal(4,2) not null default '4.99',
    duracao_do_filme int default null,
    custo_de_substituicao decimal(5,2) not null default '19.99',
    classificacao enum('L', '10', '14', '16') default 'L',
    recursos_especiais set('Trailers', 'Comentarios', 'Cenas Deletadas') default null,
    primary key (filme_id),
    key fk_idioma_id (idioma_id),
    key fk_idioma_original_id (idioma_original_id)
);

insert into filme values ('0', 'O Grito', 'Assustador', 2000, 1, 2, 3, 5.99, 120, 10.00, '16', 'Trailers');
insert into filme values ('0', 'O Pastor', 'Gospel', 2020, 1, 2, 3, 5.99, 120, 10.00, '10', 'Comentarios');

select * from filme;

select * from filme, idioma where filme.idioma_id = idioma.idioma_id;

select titulo, nome from filme, idioma where filme.idioma_id = idioma.idioma_id;

select titulo, nome from filme, idioma;

create table filme_ator(
	ator_id int not null,
    filme_id int not null,
    primary key (ator_id, filme_id),
    key fk_filme_id (filme_id),
    key fk_ator_id (ator_id)
);

create table cidade(
	cidade_id int not null auto_increment,
    cidade varchar(50) not null,
    pais_id int not null,
    primary key (cidade_id),
    key fk_pais_id (pais_id)
);

create table endereco(
	endereco_id int not null auto_increment,
    endereco varchar(50) not null,
    endereco2 varchar(50) not null,
    bairro varchar(20) not null,
    cidade_id int not null,
    cep varchar(10) not null,
    telefone varchar(20) not null, 
    primary key (endereco_id),
    key fk_cidade_id (cidade_id)
);

create table loja(
	loja_id int not null auto_increment,
    gerente_id int not null,
    endereco_id int not null,
    primary key (loja_id),
	key fk_endereco_id (endereco_id)
);

create table inventario(
	inventario_id int not null auto_increment,
    filme_id int not null,
    loja_id int not null,
    primary key (inventario_id),
    key fk_filme_id (filme_id),
    key fk_loja_id (loja_id)
);

create table funcionario(
	funcionario_id int not null auto_increment,
    primeiro_nome varchar(45) not null,
    ultimo_nome varchar(45) not null,
    endereco_id int not null,
    email varchar(50) not null,
    loja_id int not null,
    ativo int not null,
    usuario varchar(16) not null,
    senhar varchar(40) not null,
    primary key (funcionario_id),
    key fk_endereco_id (endereco_id),
    key fk_loja_id (loja_id)
);

create table cliente(
	cliente_id int not null auto_increment,
    loja_id int not null,
    primeiro_nome varchar(45) not null,
    ultimo_nome varchar(45) not null,
    email varchar(50) not null,
    endereco_id int not null,
    ativo int not null,
    data_criacao datetime not null,
    primary key (cliente_id),
	key fk_loja_id (loja_id),
	key fk_endereco_id (endereco_id)
);

create table aluguel(
	aluguel_id int not null auto_increment,
    data_de_aluguel datetime not null,
    inventario_id int not null,
    cliente_id int not null,
    data_de_devolucao datetime not null,
    funcionario_id int not null,
    primary key (aluguel_id),
    key fk_inventario_id (inventario_id),
	key fk_cliente_id (cliente_id),
	key fk_funcionario_id (funcionario_id)
);

create table pagamento(
	pagamento_id int not null auto_increment,
    cliente_id int not null,
    funcionario_id int not null,
    aluguel_id int not null,
    valor decimal(5,2) not null default '4.99',
    data_de_pagamento datetime not null,
    primary key (pagamento_id),
    key fk_cliente_id (cliente_id),
	key fk_funcionario_id (funcionario_id),
    key fk_aluguel_id (aluguel_id)
);