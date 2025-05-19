CREATE DATABASE modelagem_sistema_farmacia;
USE modelagem_sistema_farmacia;

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE remedio (
	id_remedio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    bula VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE fornecedor (
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(20) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE pedido (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE lista_compra (
	qtd INT NOT NULL,
    possui_receita INT NOT NULL,
    id_remedio INT,
    id_pedido INT,
    FOREIGN KEY (id_remedio) REFERENCES remedio(id_remedio),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

CREATE TABLE produtos_fornecedor (
	preco DECIMAL(10,2) NOT NULL,
    id_fornecedor INT,
    id_remedio INT,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor),
    FOREIGN KEY (id_remedio) REFERENCES remedio(id_remedio)
);