create database atividade_avaliativa_1;
use atividade_avaliativa_1;

create table endereco(
	endereco_id int not null auto_increment,
    cep int not null,
    estado varchar(255) not null,
    cidade varchar(255) not null,
    bairro varchar(255) not null,
    logradouro varchar(255) not null,
    primary key(endereco_id)
);

insert into endereco value('0', '38610000','Minas Gerais', 'Unaí', 'Divinéia', 'Rua Frei Anselino');
insert into endereco value('0', '72610010','Minas Gerais', 'Paracatu', 'Centro', 'Rua Santos Dumont');
insert into endereco value('0', '74810566','Minas Gerais', 'Patos de Minas', 'Floresta', 'Rua dos Ipês');

select * from endereco;

create table pessoa(
	pessoa_id int not null auto_increment,
    endereco_id int not null,
    nome varchar(45) not null,
    sobrenome varchar(45) not null,
    cpf bigint not null,
    sexo varchar(45) not null,
    email varchar(255) not null,
    identidade int not null,
    primary key(pessoa_id),
    key fk_endereco_id(endereco_id)
);

insert into pessoa value ('0', '1', 'Ayrton', 'Oliveira', '60136710360', 'Masculino', 'ayrton.oliveira@gmail.com', '2973983');
insert into pessoa value ('0', '1', 'Ester', 'Oliveira', '47113710026', 'Feminino', 'ester.oliveira@gmail.com', '1564831');
insert into pessoa value ('0', '1', 'Jennifer', 'Oliveira', '49848848465', 'Feminino', 'jennifer.oliveira@gmail.com', '6154184');
insert into pessoa value ('0', '1', 'Fillype', 'Oliveira', '24536198402', 'Masculino', 'fillype.oliveira@gmail.com', '4561289');

insert into pessoa value ('0', '2', 'Sabrina', 'Rabelo', '65463215636', 'Feminino', 'sabrina.rabelo@gmail.com', '8596456');
insert into pessoa value ('0', '2', 'Diogo', 'Rabelo', '25436158920', 'Masculino', 'diogo.rabelo@gmail.com', '9632846');
insert into pessoa value ('0', '2', 'Samuel', 'Rabelo', '96432156940', 'Masculino', 'samuel.rabelo@gmail.com', '9654120');

insert into pessoa value ('0', '3', 'Gabriel', 'Silva', '54861235425', 'Masculino', 'gabriel.silva@gmail.com', '8964327');
insert into pessoa value ('0', '3', 'João', 'Silva', '54896325814', 'Masculino', 'joao.silva@gmail.com', '6352417');
insert into pessoa value ('0', '3', 'Karine', 'Silva', '96314725836', 'Feminino', 'karine.silva@gmail.com', '8541632');
insert into pessoa value ('0', '3', 'Larissa', 'Silva', '84563215964', 'Feminino', 'larissa.silva@gmail.com', '7456289');
insert into pessoa value ('0', '3', 'Jacilene', 'Silva', '85694236710', 'Feminino', 'jacilene.silva@gmail.com', '5469327');

select  from;
