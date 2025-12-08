use vendas_dimensional;

DROP DATABASE vendas_dimensional;
CREATE TABLE dim_fornecedor (
id				BIGINT PRIMARY KEY NOT NULL,
fornecedor		VARCHAR(200) NOT NULL,
contato 		VARCHAR(200) NOT NULL);

CREATE TABLE dim_pais (
id				BIGINT PRIMARY KEY NOT NULL,
sigla			VARCHAR(2) NOT NULL UNIQUE,
pais	 		VARCHAR(100) NOT NULL);
	
CREATE TABLE dim_transportadora (
id				BIGINT PRIMARY KEY NOT NULL,
transportadora	VARCHAR(200) NOT NULL,
contato	 		VARCHAR(200) NOT NULL);

CREATE TABLE dim_categoria (
id				BIGINT PRIMARY KEY NOT NULL,
categoria		VARCHAR(200) NOT NULL);

CREATE TABLE dim_produto (
id				BIGINT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
produto			VARCHAR(200) NOT NULL,
precounitario	DECIMAL(10,2),
descontinuado	TINYINT(1));

CREATE TABLE dim_vendedor (
id 				BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome			VARCHAR(200) NOT NULL,
sexo_codigo		CHAR(1) NOT NULL,
sexo_descricao	VARCHAR(40) NOT NULL,
nascimento		DATE NOT NULL,
contrato		DATE NOT NULL,
supervisor		VARCHAR(200) NOT NULL);

CREATE TABLE dim_cliente (
id						BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome_cliente			VARCHAR(200) NOT NULL,
sexo_codigo				CHAR(1) NOT NULL,
sexo_descricao			VARCHAR(40) NOT NULL,
profissao				VARCHAR(200),
email					VARCHAR(200) NOT NULL,
provedor_do_cliente		VARCHAR(45) NOT NULL,
nascimento				DATE NOT NULL,
cadastro				DATE NOT NULL,
endereco_completo		VARCHAR(450) NOT NULL,
cod_nacionalidade		VARCHAR(45) NOT NULL,
nacionalidade			VARCHAR(45) NOT NULL);

CREATE TABLE dim_tempo (
id						BIGINT UNSIGNED PRIMARY KEY,
data_					DATE NOT NULL,
data_dia				INT NOT NULL,
data_mes				INT NOT NULL,
data_ano				INT NOT NULL,
data_juliana			VARCHAR(50),
semestre				INT NOT NULL,
quadrimestre			INT NOT NULL,
trimestre				INT NOT NULL,
bimestre				INT NOT NULL,
nome_mes				VARCHAR(50),
dia_da_semana			INT NOT NULL,
nome_dia_da_semana		VARCHAR(50),
semana_do_ano			VARCHAR(50),
data_string				CHAR(10),
dia_do_ano				INT NOT NULL,
ultimo_dia_mes			INT NOT NULL,
fim_de_semana			TINYINT);


CREATE TABLE fat_item (
id							 	BIGINT UNSIGNED PRIMARY KEY,	
qtd_vendida					 	INT NOT NULL,
preco_unitario_na_venda		 	DECIMAL(18,2) NOT NULL,
valor_frete					 	DECIMAL(18,2) NOT NULL,
valor_desconto					DECIMAL(18,2) NOT NULL,
valor_comissao					DECIMAL(18,2) NOT NULL,
tempo_pedido 					BIGINT NOT NULL,
tempo_pagamento 				BIGINT NOT NULL,
tempo_previsao 					BIGINT NOT NULL,
tempo_envio 					BIGINT NOT NULL,
tempo_entrega 					BIGINT NOT NULL,
idcliente 						BIGINT NOT NULL,
pais_maradia_cliente 	        BIGINT NOT NULL,
pais_nacionalidade_cliente      BIGINT NOT NULL,
pais_destino 					BIGINT NOT NULL,
pais_transportadora 			BIGINT NOT NULL,
pais_vendedor 					BIGINT NOT NULL,
pais_fornecedor 				BIGINT NOT NULL,
idcategoria 					BIGINT NOT NULL,
idproduto 						BIGINT NOT NULL);








