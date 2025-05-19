CREATE DATABASE modelagem_logistica;
USE modelagem_logistica;

CREATE TABLE fornecedor (
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE fabricante (
	id_fabricante INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produto (
	id_produto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE lote (
	id_lote INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    numero VARCHAR(50) NOT NULL,
    quantidade INT,
    id_fabricante INT,
    id_fornecedor INT,
    id_produto INT,
    FOREIGN KEY (id_fabricante) REFERENCES fabricante(id_fabricante),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);