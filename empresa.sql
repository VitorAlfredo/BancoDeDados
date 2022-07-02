create database empresa;

use empresa;

create table departamentos(
	id_departamento int not null auto_increment,
    nome varchar(255) not null,
    localizacao varchar(255) not null,
    primary key (id_departamento)
); 

insert into departamentos values ('0', 'Back-End', 'Primeiro Andar');
insert into departamentos values ('0', 'Front-End', 'Segundo Andar');

create table funcionarios(
	id_funcionario int not null auto_increment,
    primeiro_nome varchar(255) not null,
    segundo_nome varchar(255),
    ultimo_nome varchar(255) not null,
    dt_nascimento date not null,
    cpf varchar(255) not null,
    rg varchar(255) not null,
    endereco varchar(255) not null,
    cep varchar(255) not null,
    cidade varchar(255) not null,
    telefone varchar(255) not null,
    id_departamento int not null,
    funcao varchar(255) not null,
    salario float not null,
    primary key(id_funcionario),
    key fk_departamento_id(id_departamento)
);

insert into funcionarios values('0', 'Vitor', 'Alfredo', 'Ferreira', '2002-09-23', '000.000.000-00', '0.000.000', 
'QN 14B Conjunto 08 Casa 19', '71000-001', 'Riacho Fundo 2', '(61)99860-7276', '1', 'Programador Java', '5000.00');
insert into funcionarios values('0', 'Gabriela', '', 'Oliveira', '2002-01-02', '000.000.000-00', '0.000.000', 
'QN 15A Conjunto 02 Casa 6', '71000-002', 'Riacho Fundo 2', '(61)99933-0983', '2', 'Designer', '2900.00');
insert into funcionarios values('0', 'João', 'Carlos', 'Cardozo', '2000-03-16', '000.000.000-00', '0.000.000', 
'QNN 35 Conjunto B Casa 27', '71000-003', 'Ceilândia', '(61)99837-9404', '2', 'Designer', '3000.00');
insert into funcionarios values('0', 'Elias', '', 'Ferreira', '1980-08-08', '000.000.000-00', '0.000.000', 
'QNN 27 Conjunto C Casa 12', '71000-004', 'Ceilândia', '(61)99738-3849', '1', 'Programador C#', '2000.00');
insert into funcionarios values('0', 'Alfredo', '', 'Filho', '1967-12-13', '000.000.000-00', '0.000.000', 
'Qi 414 Conjunto 02 Lote 5', '71000-005', 'Samambaia', '(61)99764-0938', '1', 'Programador VBA', '2500.00');
insert into funcionarios values('0', 'Vitor', 'Eduardo', 'Duarte', '1994-08-02', '000.000.000-00', '0.000.000', 
'Qd. 804 Conjunto 03 Casa 21', '71000-006', 'Recanto', '(61)99738-7439', '1', 'DBA', '2800.00');
insert into funcionarios values('0', 'Lucas', '', 'Assunção', '2002-01-13', '000.000.000-00', '0.000.000', 
'Qd. 405 Conjunto 07 Casa 15', '71000-007', 'Recanto', '(61)99734-3748', '1', 'Estagiário', '800.00');
insert into funcionarios values('0', 'Amanda', 'Vitória', 'Ferreira', '1992-09-23', '000.000.000-00', '0.000.000', 
'Qd. 404 Conjunto 06 Casa 09', '71000-008', 'Recanto', '(61)99207-4734', '2', 'Estagiária', '800.00');
insert into funcionarios values('0', 'Ismael', '', 'Rodrigues', '1978-01-25', '000.000.000-00', '0.000.000', 
'QNG 32 Conjunto 03 Casa 12', '71000-009', 'Taguatinga', '(61)99063-4563', '2', 'Programador Web', '2500.00');
insert into funcionarios values('0', 'Pedro', 'Gabriel', 'Dos Santos', '1996-10-20', '000.000.000-00', '0.000.000', 
'QND 27 Conjunto 08 Casa 04', '71000-010', 'Taguatinga', '(61)99065-0033', '2', 'Desenvolvedor React', '2300.00');

select primeiro_nome, ultimo_nome from funcionarios order by ultimo_nome asc, primeiro_nome asc;

select primeiro_nome, segundo_nome, ultimo_nome, salario from funcionarios 
where salario >= 1000 order by primeiro_nome asc;

select primeiro_nome, date_format(dt_nascimento, '%d/%m/%Y') as 'Data de nascimento' 
from funcionarios order by dt_nascimento desc;

select ultimo_nome, primeiro_nome, segundo_nome, telefone, endereco, cidade from funcionarios 
order by ultimo_nome asc, primeiro_nome asc;

select sum(salario) as 'Total da folha de pagamento' from funcionarios;

select primeiro_nome, nome, funcao from funcionarios, departamentos
where funcionarios.id_departamento = departamentos.id_departamento;

select count(*) as 'Qtd de funcionários' from funcionarios;

select nome, avg(salario) as 'Media salarial' from funcionarios, departamentos;

select min(salario) as 'Menor salário' from funcionarios;

select primeiro_nome, ultimo_nome from funcionarios where segundo_nome = '';