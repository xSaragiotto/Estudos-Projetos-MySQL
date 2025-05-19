CREATE DATABASE modelagem_predio;
USE modelagem_predio;

CREATE TABLE cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cpf VARCHAR(100) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE predio (
	id_predio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    numeracao INT NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE sala (
	id_sala INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    andar INT NOT NULL,
    numero INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    descricao VARCHAR(100),
    id_predio INT,
    FOREIGN KEY (id_predio) REFERENCES predio(id_predio)
);

CREATE TABLE reserva (
	data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_sala INT,
    id_cliente INT,
    FOREIGN KEY (id_sala) REFERENCES sala(id_sala),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

ALTER TABLE cliente MODIFY COLUMN cpf VARCHAR(11) UNIQUE;