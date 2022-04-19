create database aula2;
use aula2;

create table ator(
	ator_id int not null auto_increment,
    primeiro_nome varchar(45) not null,
    ultimo_nome varchar(45) not null,
	primary key (ator_id)
);

select * from ator;

insert into ator values ('0', 'Brad', 'Pitt');
insert into ator values ('0', 'Julia', 'Roberts');
insert into ator values ('0', 'George', 'Clooney');
insert into ator values ('0', 'Juliana', 'Paes');
insert into ator values ('0', 'Jack', 'Sparrow');
insert into ator values ('0', 'Cris', 'Evans');
insert into ator values ('0', 'Robert', 'Downey Jr');
insert into ator values ('3', 'Cris', 'Pratt');

create table categoria(
	categoria_id int not null auto_increment,
    nome varchar(25) not null,
	primary key (categoria_id)
);

select * from categoria;

insert into categoria value ('0', 'Terror');
insert into categoria value ('0', 'Ação');
insert into categoria value ('0', 'Aventura');
insert into categoria value ('0', 'Suspense');
insert into categoria value ('0', 'Ficção');
insert into categoria value ('0', 'Comédia');
insert into categoria value ('0', 'Romance');
