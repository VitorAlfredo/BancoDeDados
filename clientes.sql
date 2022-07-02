create database clientes;

use clientes;

create table endereco(
	id_endereco int not null auto_increment,
    estado varchar(255) not null,
    cidade varchar(255) not null,
    bairro varchar(255) not null,
    logradouro varchar(255) not null,
    numero int not null,
    primary key(id_endereco)
);

insert into endereco values("0", "Distrito Federal", "Brasília", "Ceilândia Norte", "Conjunto A", "24");
insert into endereco values("0", "Distrito Federal", "Brasília", "Riacho Fundo 2", "QN 12A Conjunto 4", "19");
insert into endereco values("0", "Distrito Federal", "Brasília", "Recanto das Emas", "Qd. 405 Conjunto 23", "26");
insert into endereco values("0", "Distrito Federal", "Brasília", "Sol Nascente", "SHSN CH. 03 Conjunto C", "13");

select * from endereco;

create table telefone(
    ddd int not null
);

insert into telefone value ("61");
insert into telefone value ("61");
insert into telefone value ("61");
insert into telefone value ("61");

select * from telefone;

create table pessoa(
	id_pessoa int not null auto_increment,
    nome varchar(255) not null,
    cpf varchar(55) not null,
    email varchar(255) not null,
    data_nascimento varchar(55) not null,
    id_endereco int not null,
    id_telefone int not null,
    primary key(id_pessoa),
    key fk_endereco_id(id_endereco),
    key fk_telefone_id(id_telefone)
);

insert into pessoa values("0", "Vitor", "60710136360", "vitor.alfredo@gmail.com", "23/09/2002", "1", "1");
insert into pessoa values("0", "Gabriela", "09836739870", "gabriela.oliveira@gmail.com", "02/01/2006", "2", "2");
insert into pessoa values("0", "Amanda", "09825638490", "amanda.vitoria@gmail.com", "23/09/2002", "3", "3");
insert into pessoa values("0", "Araci", "50492998738", "araci.lima@gmail.com", "14/03/1971", "4", "4");

select * from pessoa;

update endereco set logradouro = "QNN 35 Conjunto A" where id_endereco = "1";

delete from pessoa where id_pessoa = "3";

alter table endereco add complemento varchar(255) not null;

update endereco set complemento = "Conjunto A/B" where id_endereco = "1";
update endereco set complemento = "Ao lado do condominio 06" where id_endereco = "2";
update endereco set complemento = "Proximo a escola" where id_endereco = "3";
update endereco set complemento = "Proximo a distribuidora JK" where id_endereco = "4";

alter table telefone add numero varchar(255) not null;
alter table telefone add id_telefone int primary key auto_increment;

update telefone set numero = "998607276" where id_telefone = "1";
update telefone set numero = "999015249" where id_telefone = "2";
update telefone set numero = "993329423" where id_telefone = "3";
update telefone set numero = "985121941" where id_telefone = "4";

select * from pessoa, endereco, telefone where pessoa.id_endereco = endereco.id_endereco and pessoa.id_telefone = telefone.id_telefone;

drop table endereco;

drop database clientes;