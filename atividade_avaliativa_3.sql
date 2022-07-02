create database atividade_avaliativa_3;

use atividade_avaliativa_3;

create table produto(
	id_nf int not null,
	id_item int not null,
	cod_prod int not null,
	valor_unit decimal(4,2) not null,
	quantidade int not null,
	desconto int null,
	vendido int null
);

insert into produto values(1, 1, 1, 25.00, 10, 5, 1);
insert into produto values(1, 2, 2, 13.00, 3, null, 0);
insert into produto values(1, 3, 3, 15.00, 2, null, 0);
insert into produto values(1, 4, 4, 10.00, 1, null, 0);
insert into produto values(1, 5, 5, 30.00, 1, null, 1);
insert into produto values(4, 1, 5, 30.00, 10, 15, 1);
insert into produto values(4, 2, 4, 10.00, 12, 5, 1);

select * from produto;

select id_nf, id_item, cod_prod, valor_unit from produto where desconto = null;

select id_nf, id_item, cod_prod, valor_unit from produto where desconto >= 1;

update produto set desconto = 0 where desconto = null;

select id_nf, id_item, cod_prod, valor_unit from produto where vendido = 1;

select cod_prod, quantidade, max(quantidade) as `quantidade máxima` from produto where quantidade > 10;

select id_nf, cod_prod from produto where quantidade > 10;

select cod_prod, avg(desconto) as `desconto médio` from produto;

select cod_prod, min(desconto) as `desconto mínimo`, avg(desconto) as `média de desconto`, max(desconto) as `desconto máximo` from produto;

select id_nf from produto where quantidade > 3;