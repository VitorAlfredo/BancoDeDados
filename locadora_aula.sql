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

create table filme_texto(
	filme_id int not null auto_increment,
    titulo varchar(255) not null,
	primary key (filme_id)
);

select * from filme_texto;

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

select * from pais;

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

select * from idioma;

insert into idioma value ('0', 'Português-BR');
insert into idioma value ('0', 'Inglês');
insert into idioma value ('0', 'Alemão');
insert into idioma value ('0', 'Francês');
insert into idioma value ('0', 'Japonês');
insert into idioma value ('0', 'Norueguês');

