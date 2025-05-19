CREATE DATABASE modelo_pizzaria;
USE modelo_pizzaria;

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(100) NOT NULL,
    endereco VARCHAR(100)
);

CREATE TABLE pizza (
	id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(100)
);

CREATE TABLE tamanho (
	id_tamanho INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100)
);

CREATE TABLE pedido (
	id_compra INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
	hora TIME,
    valor_total DECIMAL(10,2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE catalogo (
	id_catalogo INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    id_tamanho INT,
    id_pizza INT,
    FOREIGN KEY (id_tamanho) REFERENCES tamanho(id_tamanho),
    FOREIGN KEY (id_pizza) REFERENCES pizza(id_pizza)
);

CREATE TABLE transacao (
	qtd INT,
    id_pedido INT,
    id_tamanho INT,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_tamanho) REFERENCES tamanho(id_tamanho)
);

-- ALTER TABLE pedido CHANGE COLUMN id_compra id_pedido INT PRIMARY KEY AUTO_INCREMENT;


