CREATE DATABASE `atividade3`;

USE `atividade3`;

CREATE TABLE `produto`(

`id_nf` int not null,
`id_item` int not null,
`cod_prod` int not null,
`valor_unit` DECIMAL(4,2) NOT NULL,
`quantidade` INT NOT NULL,
`desconto` INT NULL,
`vendido` INT NULL

);

DROP TABLE `produto`;

INSERT INTO `produto` VALUES(1,1,1,25.00,10,5,1);
INSERT INTO `produto` VALUES(1,2,2,13.00,3,null,0);
INSERT INTO `produto` VALUES(1,3,3,15.00,2,null,0);
INSERT INTO `produto` VALUES(1,4,4,10.00,1,null,0);
INSERT INTO `produto` VALUES(1,5,5,30.00,1,null,1);
INSERT INTO `produto` VALUES(4,1,5,30.00,10,15,1);
INSERT INTO `produto` VALUES(4,2,4,10.00,12,5,1);

SELECT `id_nf`,`id_item`,`cod_prod`,`valor_unit` FROM `produto` WHERE `desconto` = null;

SELECT `id_nf`,`id_item`,`cod_prod`,`valor_unit` FROM `produto` WHERE `desconto` >=1;

UPDATE `produto` SET `desconto` = 0 WHERE `desconto` = null;

SELECT `id_nf`,`id_item`,`cod_prod`,`valor_unit` FROM `produto` WHERE `vendido` = 1;

SELECT `cod_prod`,`quantidade`,max(`quantidade`) AS `quantidade máxima` FROM `produto` WHERE `quantidade` >10;

SELECT `id_nf`,`cod_prod` FROM `produto` WHERE `quantidade` > 10;

SELECT `cod_prod`,avg(`desconto`) AS `desconto médio` FROM `produto`;

SELECT `cod_prod`,min(`desconto`) AS `desconto mínimo`,avg(`desconto`) AS `média de desconto`,max(`desconto`) AS `desconto máximo` FROM `produto`;

SELECT `id_nf` FROM `produto` WHERE `quantidade` > 3;