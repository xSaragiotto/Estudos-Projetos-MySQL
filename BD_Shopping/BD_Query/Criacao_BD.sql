CREATE DATABASE modelagem_shopping;
USE modelagem_shopping;

CREATE TABLE proprietario(
	id_proprietario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE horario(
	id_horario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    horario_abertura TIME,
    horario_fechamento TIME
);

CREATE TABLE semana(
	id_semana INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE status_fatura(
	id_status_fatura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE unidade(
	id_unidade INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nr_andar INT NOT NULL,
    valor_aluguel DECIMAL(10,2) NOT NULL,
    metros_quadrados DECIMAL(10,2),
    id_categoria INT,
    id_proprietario INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (id_proprietario) REFERENCES proprietario(id_proprietario)
);

CREATE TABLE fatura (
	id_fatura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_pagamento DATE NOT NULL,
    data_vencimento DATE NOT NULL,
    valor_aluguel DECIMAL(10,2) NOT NULL,
    id_status_fatura INT,
    id_unidade INT,
    FOREIGN KEY (id_status_fatura) REFERENCES status_fatura(id_status_fatura),
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade)
);

CREATE TABLE catalogo (
	id_catalogo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_unidade INT NOT NULL,
    id_semana INT NOT NULL,
    id_horario INT NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade),
    FOREIGN KEY (id_semana) REFERENCES semana(id_semana),
    FOREIGN KEY (id_horario) REFERENCES horario(id_horario)
);

