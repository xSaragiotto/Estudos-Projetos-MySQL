CREATE DATABASE modelagem_hospital;
USE modelagem_hospital;

CREATE TABLE medico (
	id_medico INT PRIMARY KEY AUTO_INCREMENT,
    crm VARCHAR(20) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE responsavel (
	id_responsavel INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE remedio (
	id_remedio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE quarto (
	id_quarto INT PRIMARY KEY AUTO_INCREMENT,
    numeracao INT NOT NULL,
    nro_andar INT NOT NULL
);

CREATE TABLE cama (
	id_cama INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    id_quarto INT,
    FOREIGN KEY (id_quarto) REFERENCES quarto(id_quarto)
);

CREATE TABLE paciente (
	id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_responsavel INT,
    FOREIGN KEY (id_responsavel) REFERENCES responsavel(id_responsavel)
);

CREATE TABLE consulta (
	id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    anotacao VARCHAR(100),
    id_medico INT,
    id_paciente INT,
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

CREATE TABLE historico_domiciliar (
	data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
	id_cama INT,
    id_paciente INT,
    FOREIGN KEY (id_cama) REFERENCES cama(id_cama),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

CREATE TABLE historico_medicamento (
	data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    id_remedio INT,
    id_consulta INT,
    FOREIGN KEY (id_remedio) REFERENCES remedio(id_remedio),
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta)
);