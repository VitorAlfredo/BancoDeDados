create database aulaDDL;

use aulaDDL;

create table aluno(
	id_aluno int not null auto_increment,
    nome varchar(255) not null,
    matricula varchar(10) not null,
    primary key(id_aluno)
);

select * from aluno;

alter table aluno add curso varchar(255) not null;
alter table aluno add endereco varchar(255) after nome;

alter table aluno drop column endereco;
alter table aluno drop column id_aluno;

alter table aluno add id_aluno int primary key auto_increment;

insert into aluno values("Maria", "Rua X", "ADS", "0");
insert into aluno values("Jose", "Rua Y", "ES", "0");
insert into aluno (nome, curso, id_aluno) values("Afonso", "CP", "3");
insert into aluno (nome, curso) values("Marcio", "EA");

update aluno set endereco = "Rua Z" where id_aluno = "3";
delete from endereco where id_aluno = "3";


