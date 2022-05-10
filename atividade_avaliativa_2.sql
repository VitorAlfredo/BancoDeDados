create database atividade_avaliativa_2;
use atividade_avaliativa_2;

create table aluno(
	aluno_id int not null auto_increment,
    nome varchar(50) not null,
    email varchar(255) not null,
    telefone bigint not null,
    matricula int not null,
    primary key(aluno_id)
);

insert into aluno value ('0','Vitor', 'vitor.catolica@gmail.com', '61998607276', '21200294');
insert into aluno value ('0','Saulo', 'saulo.catolica@gmail.com', '61994562354', '21265984');
insert into aluno value ('0','Davi', 'davi.catolica@gmail.com', '61985643576', '21265123');
insert into aluno value ('0','Carlos', 'carlos.catolica@gmail.com', '61982954612', '21263568');
insert into aluno value ('0','Raphael', 'raphael.catolica@gmail.com', '61996582347', '21269327');
insert into aluno value ('0','Lucas', 'lucas.catolica@gmail.com', '61998635241', '21294856');
insert into aluno value ('0','Giovanna', 'giovana.catolica@gmail.com', '61994634589', '21291643');
insert into aluno value ('0','Iasmin', 'iasmin.catolica@gmail.com', '61985632149', '21263412');
insert into aluno value ('0','Eduardo', 'eduardo.catolica@gmail.com', '61982635794', '21249526');
insert into aluno value ('0','João', 'joao.catolica@gmail.com', '61996634981', '21265489');

select * from aluno;

create table diciplina(
	diciplina_id int not null auto_increment,
    nome varchar(255) not null,
    curso varchar(255) not null,
    primary key(diciplina_id)
);

insert into diciplina value ('0', 'Laboratório de Banco de Dados', 'ADS');
insert into diciplina value ('0', 'Engenharia de Software', 'ADS');
insert into diciplina value ('0', 'Programação Orientada a Objetos', 'ADS');
insert into diciplina value ('0', 'Programação Web', 'ADS');
insert into diciplina value ('0', 'Teste de Software', 'ADS');
insert into diciplina value ('0', 'Desing de Software', 'ADS');
insert into diciplina value ('0', 'Engenharia de Requisitos', 'ADS');
insert into diciplina value ('0', 'Algoritimos de Programação', 'ADS');
insert into diciplina value ('0', 'Computação e Sociedade', 'ADS');
insert into diciplina value ('0', 'Programação de APP', 'ADS');

insert into diciplina value ('0', 'Laboratório de Banco de Dados', 'Engenharia de Software');
insert into diciplina value ('0', 'Engenharia de Software', 'Engenharia de Software');
insert into diciplina value ('0', 'Programação Orientada a Objetos', 'Engenharia de Software');
insert into diciplina value ('0', 'Programação Web', 'Engenharia de Software');
insert into diciplina value ('0', 'Teste de Software', 'Engenharia de Software');
insert into diciplina value ('0', 'Desing de Software', 'Engenharia de Software');
insert into diciplina value ('0', 'Engenharia de Requisitos', 'Engenharia de Software');
insert into diciplina value ('0', 'Algoritimos de Programação', 'Engenharia de Software');
insert into diciplina value ('0', 'Computação e Sociedade', 'Engenharia de Software');
insert into diciplina value ('0', 'Programação de APP', 'Engenharia de Software');

select * from diciplina;

create table aluno_diciplina(
	aluno_id int not null,
    diciplina_id int not null,
    primary key(aluno_id, diciplina_id),
    key fk_aluno_id (aluno_id),
    key fk_diciplina_id (diciplina_id)
);

insert into aluno_diciplina values ('10', '6');
insert into aluno_diciplina values ('10', '12');
insert into aluno_diciplina values ('10', '17');
insert into aluno_diciplina values ('10', '15');
insert into aluno_diciplina values ('10', '14');

select nome as a, nome as d from aluno, diciplina, aluno_diciplina where aluno.aluno_id = diciplina.diciplina_id and diciplina.diciplina_id = aluno.aluno_id;
 