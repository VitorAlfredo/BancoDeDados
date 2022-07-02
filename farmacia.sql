create database farmacia;

create table medicamentos(
	med_id int not null auto_increment,
    nome_laboratorio varchar(255) not null,
    preco float not null,
    dt_vencimento varchar(255) not null,
    nome_medicamento varchar(255) not null,
    qtd_estoque int not null,
    primary key(med_id)
);

select * from medicamentos;