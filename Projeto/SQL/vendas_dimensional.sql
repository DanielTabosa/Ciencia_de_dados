CREATE DATABASE vendas_dimensional;
use vendas_dimensional;
CREATE TABLE dim_fornecedor (
id				BIGINT PRIMARY KEY,
fornecedor		VARCHAR(200) NOT NULL,
contato 		VARCHAR(200) NOT NULL);

CREATE TABLE dim_pais (
id				BIGINT PRIMARY KEY,
sigla			VARCHAR(2) NOT NULL UNIQUE,
pais	 		VARCHAR(100) NOT NULL);
	
CREATE TABLE dim_transportadora (
id				BIGINT PRIMARY KEY,
transportadora	VARCHAR(200) NOT NULL,
contato	 		VARCHAR(200) NOT NULL);

CREATE TABLE dim_categoria (
id				BIGINT PRIMARY KEY,
categoria		VARCHAR(200) NOT NULL);

CREATE TABLE dim_produto (
id				BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
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