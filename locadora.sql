CREATE TABLE `aluguel` (
  `aluguel_id` int(11) NOT NULL auto_increment,
  `data_de_aluguel` datetime NOT NULL,
  `inventario_id` mediumint(8) unsigned NOT NULL,
  `cliente_id` smallint(5) unsigned NOT NULL,
  `data_de_devolucao` datetime default NULL,
  `funcionario_id` tinyint(3) unsigned NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`aluguel_id`)
);



-- --------------------------------------------------------

--
-- Estrutura da tabela `ator`
--

CREATE TABLE  `ator` (
  `ator_id` smallint(5) unsigned NOT NULL auto_increment,
  `primeiro_nome` varchar(45) NOT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`ator_id`)
);



-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE  `categoria` (
  `categoria_id` tinyint(3) unsigned NOT NULL auto_increment,
  `nome` varchar(25) NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`categoria_id`)
) ;

CREATE TABLE `cidade` (
  `cidade_id` smallint(5) unsigned NOT NULL auto_increment,
  `cidade` varchar(50) NOT NULL,
  `pais_id` smallint(5) unsigned NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`cidade_id`)
) ;



CREATE TABLE `cliente` (
  `cliente_id` smallint(5) unsigned NOT NULL auto_increment,
  `loja_id` tinyint(3) unsigned NOT NULL,
  `primeiro_nome` varchar(45) NOT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  `email` varchar(50) default NULL,
  `endereco_id` smallint(5) unsigned NOT NULL,
  `ativo` tinyint(1) NOT NULL default '1',
  `data_criacao` datetime NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`cliente_id`)
);




CREATE TABLE `endereco` (
  `endereco_id` smallint(5) unsigned NOT NULL auto_increment,
  `Rua` varchar(50) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade_id` smallint(5) unsigned NOT NULL,
  `cep` varchar(10) default NULL,
  `telefone` varchar(20) NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`endereco_id`)
) ;


CREATE TABLE  `filme` (
  `filme_id` smallint(5) unsigned NOT NULL auto_increment,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `ano_de_lancamento` year(4) default NULL,
  `idioma_id` tinyint(3) unsigned NOT NULL,
  `idioma_original_id` tinyint(3) unsigned default NULL,
  `duracao_da_locacao` tinyint(3) unsigned NOT NULL default '3',
  `preco_da_locacao` decimal(4,2) NOT NULL default '4.99',
  `duracao_do_filme` smallint(5) unsigned default NULL,
  `custo_de_substituicao` decimal(5,2) NOT NULL default '19.99',
  `classificacao` enum('G','PG','PG-13','R','NC-17') default 'G',
  `recursos_especiais` set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') default NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`filme_id`)
) ;

CREATE TABLE `filme_ator` (
  `ator_id` smallint(5) unsigned NOT NULL,
  `filme_id` smallint(5) unsigned NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`ator_id`,`filme_id`)
);


CREATE TABLE `filme_categoria` (
  `filme_id` smallint(5) unsigned NOT NULL,
  `categoria_id` tinyint(3) unsigned NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`filme_id`,`categoria_id`)
);



CREATE TABLE `funcionario` (
  `funcionario_id` tinyint(3) unsigned NOT NULL auto_increment,
  `primeiro_nome` varchar(45) NOT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  `endereco_id` smallint(5) unsigned NOT NULL,
  `foto` blob,
  `email` varchar(50) default NULL,
  `loja_id` tinyint(3) unsigned NOT NULL,
  `ativo` tinyint(1) NOT NULL default '1',
  `usuario` varchar(16) NOT NULL,
  `senha` varchar(40) character set utf8 collate utf8_bin default NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`funcionario_id`)
) ;

CREATE TABLE `idioma` (
  `idioma_id` tinyint(3) unsigned NOT NULL auto_increment,
  `nome` char(20) NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`idioma_id`)
);


CREATE TABLE `inventario` (
  `inventario_id` mediumint(8) unsigned NOT NULL auto_increment,
  `filme_id` smallint(5) unsigned NOT NULL,
  `loja_id` tinyint(3) unsigned NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`inventario_id`)
);



CREATE TABLE `loja` (
  `loja_id` tinyint(3) unsigned NOT NULL auto_increment,
  `gerente_id` tinyint(3) unsigned NOT NULL,
  `endereco_id` smallint(5) unsigned NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL ,
  PRIMARY KEY  (`loja_id`)
);


CREATE TABLE `pagamento` (
  `pagamento_id` smallint(5) unsigned NOT NULL auto_increment,
  `cliente_id` smallint(5) unsigned NOT NULL,
  `funcionario_id` tinyint(3) unsigned NOT NULL,
  `aluguel_id` int(11) default NULL,
  `valor` decimal(5,2) NOT NULL,
  `data_de_pagamento` datetime NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL,
  PRIMARY KEY  (`pagamento_id`)
);


CREATE TABLE  `pais` (
  `pais_id` smallint(5) unsigned NOT NULL auto_increment,
  `pais` varchar(50) NOT NULL,
  `ultima_atualizacao` timestamp NOT NULL ,
  PRIMARY KEY  (`pais_id`)
) ;



